clc; clear; close all;

% Define problem dimensions
D_values = [2, 10]; 
num_runs = 15;

% Benchmark functions
functions = {@shifted_rosenbrock, @rotated_hybrid_composition, @shifted_rotated_elliptic};
function_names = {'Shifted Rosenbrock', 'Rotated Hybrid Composition', 'Shifted Rotated Elliptic'};

% Optimization algorithms
optimizers = {@optimize_ga, @optimize_pso, @optimize_sa};
optimizer_names = {'GA', 'PSO', 'SA'};

% Initialize results table
results_table = table();

% Run experiments
for D = D_values
    fprintf('\nRunning optimization for D = %d\n', D);
    
    for f_idx = 1:length(functions)
        func = functions{f_idx};
        fprintf('Function: %s\n', function_names{f_idx});
        
        for opt_idx = 1:length(optimizers)
            optimizer = optimizers{opt_idx};
            results = zeros(num_runs, 1);

            for run = 1:num_runs
                [best_val, ~] = optimizer(func, D);
                results(run) = best_val;
                fprintf('%s - Run %d: %.5f\n', optimizer_names{opt_idx}, run, best_val);
            end

            % Calculate statistics
            mean_result = mean(results);
            std_result = std(results);
            best_result = min(results);
            worst_result = max(results);

            % Print results to console
            fprintf('%s: Mean=%.5f, Std=%.5f, Best=%.5f, Worst=%.5f\n', ...
                optimizer_names{opt_idx}, mean_result, std_result, best_result, worst_result);
            
            % Add the results to the table
            results_table = [results_table; ...
                {function_names{f_idx}, optimizer_names{opt_idx}, D, mean_result, std_result, best_result, worst_result}];
            
            % Plot results
            figure;
            plot(1:num_runs, results, 'o-', 'LineWidth', 1.5);
            xlabel('Run');
            ylabel('Objective Function Value');
            title(sprintf('%s on %s (D=%d)', optimizer_names{opt_idx}, function_names{f_idx}, D));
            grid on;
        end
    end
end

% Write results to a CSV file
writetable(results_table, 'optimization_results.csv');

% Benchmark Functions
function f = shifted_rosenbrock(x)
    shift = ones(size(x)); % Example shift
    x = x - shift;
    f = sum(100*(x(2:end) - x(1:end-1).^2).^2 + (1 - x(1:end-1)).^2);
end

function f = rotated_hybrid_composition(x)
    R = eye(length(x)); % Identity rotation (placeholder)
    x_rot = R * x';
    f = sum(x_rot.^2); % Replace with actual formula
end

function f = shifted_rotated_elliptic(x)
    shift = ones(size(x)); 
    x = x - shift;
    condition = 1e6;
    f = sum(condition.^((0:length(x)-1)/(length(x)-1)) .* x.^2);
end

% Genetic Algorithm Optimization
function [best_val, best_sol] = optimize_ga(obj_func, D)
    options = optimoptions('ga', 'PopulationSize', 50, 'MaxGenerations', 100, 'Display', 'off');
    [best_sol, best_val] = ga(obj_func, D, [], [], [], [], -100*ones(1,D), 100*ones(1,D), [], options);
end

% Particle Swarm Optimization
function [best_val, best_sol] = optimize_pso(obj_func, D)
    options = optimoptions('particleswarm', 'SwarmSize', 50, 'MaxIterations', 100, 'Display', 'off');
    [best_sol, best_val] = particleswarm(obj_func, D, -100*ones(1,D), 100*ones(1,D), options);
end

% Simulated Annealing
function [best_val, best_sol] = optimize_sa(obj_func, D)
    options = optimoptions('simulannealbnd', 'MaxIterations', 100, 'Display', 'off');
    [best_sol, best_val] = simulannealbnd(obj_func, rand(1,D)*200 - 100, -100*ones(1,D), 100*ones(1,D), options);
end
