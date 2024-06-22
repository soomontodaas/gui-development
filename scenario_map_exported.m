classdef scenario_map_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        Scenario  matlab.ui.Figure
        Image     matlab.ui.control.Image
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create Scenario and hide until all components are created
            app.Scenario = uifigure('Visible', 'off');
            app.Scenario.Position = [100 100 363 369];
            app.Scenario.Name = 'Scenario map';

            % Create Image
            app.Image = uiimage(app.Scenario);
            app.Image.Position = [1 -1 367 371];
            app.Image.ImageSource = 'deployment_map_cropped1.jpg';

            % Show the figure after all components are created
            app.Scenario.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = scenario_map_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.Scenario)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.Scenario)
        end
    end
end