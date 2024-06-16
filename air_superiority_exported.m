classdef air_superiority_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        AircraftGenerationsDropDownLabel  matlab.ui.control.Label
        AircraftGenerationsDropDown    matlab.ui.control.DropDown
        GenerationofNavalAircraftDropDownLabel  matlab.ui.control.Label
        GenerationofNavalAircraftDropDown  matlab.ui.control.DropDown
        BasingDropDownLabel            matlab.ui.control.Label
        BasingDropDown                 matlab.ui.control.DropDown
        FlightDistanceDropDownLabel    matlab.ui.control.Label
        FlightDistanceDropDown         matlab.ui.control.DropDown
        ForceStructureDropDownLabel    matlab.ui.control.Label
        ForceStructureDropDown         matlab.ui.control.DropDown
        AirSuperiorityCapabilityLabel  matlab.ui.control.Label
    end

    
    properties (Access = private)
        CallingApp; % Description
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, mainapp)
            app.CallingApp=mainapp;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create AircraftGenerationsDropDownLabel
            app.AircraftGenerationsDropDownLabel = uilabel(app.UIFigure);
            app.AircraftGenerationsDropDownLabel.HorizontalAlignment = 'right';
            app.AircraftGenerationsDropDownLabel.Position = [173 329 112 22];
            app.AircraftGenerationsDropDownLabel.Text = 'Aircraft Generations';

            % Create AircraftGenerationsDropDown
            app.AircraftGenerationsDropDown = uidropdown(app.UIFigure);
            app.AircraftGenerationsDropDown.Position = [300 329 100 22];

            % Create GenerationofNavalAircraftDropDownLabel
            app.GenerationofNavalAircraftDropDownLabel = uilabel(app.UIFigure);
            app.GenerationofNavalAircraftDropDownLabel.HorizontalAlignment = 'right';
            app.GenerationofNavalAircraftDropDownLabel.Position = [132 265 153 22];
            app.GenerationofNavalAircraftDropDownLabel.Text = 'Generation of Naval Aircraft';

            % Create GenerationofNavalAircraftDropDown
            app.GenerationofNavalAircraftDropDown = uidropdown(app.UIFigure);
            app.GenerationofNavalAircraftDropDown.Position = [300 265 100 22];

            % Create BasingDropDownLabel
            app.BasingDropDownLabel = uilabel(app.UIFigure);
            app.BasingDropDownLabel.HorizontalAlignment = 'right';
            app.BasingDropDownLabel.Position = [243 208 42 22];
            app.BasingDropDownLabel.Text = 'Basing';

            % Create BasingDropDown
            app.BasingDropDown = uidropdown(app.UIFigure);
            app.BasingDropDown.Position = [300 208 100 22];

            % Create FlightDistanceDropDownLabel
            app.FlightDistanceDropDownLabel = uilabel(app.UIFigure);
            app.FlightDistanceDropDownLabel.HorizontalAlignment = 'right';
            app.FlightDistanceDropDownLabel.Position = [200 157 85 22];
            app.FlightDistanceDropDownLabel.Text = 'Flight Distance';

            % Create FlightDistanceDropDown
            app.FlightDistanceDropDown = uidropdown(app.UIFigure);
            app.FlightDistanceDropDown.Position = [300 157 100 22];

            % Create ForceStructureDropDownLabel
            app.ForceStructureDropDownLabel = uilabel(app.UIFigure);
            app.ForceStructureDropDownLabel.HorizontalAlignment = 'right';
            app.ForceStructureDropDownLabel.Position = [197 108 88 22];
            app.ForceStructureDropDownLabel.Text = 'Force Structure';

            % Create ForceStructureDropDown
            app.ForceStructureDropDown = uidropdown(app.UIFigure);
            app.ForceStructureDropDown.Position = [300 108 100 22];

            % Create AirSuperiorityCapabilityLabel
            app.AirSuperiorityCapabilityLabel = uilabel(app.UIFigure);
            app.AirSuperiorityCapabilityLabel.FontSize = 30;
            app.AirSuperiorityCapabilityLabel.FontWeight = 'bold';
            app.AirSuperiorityCapabilityLabel.FontColor = [0.149 0.149 0.149];
            app.AirSuperiorityCapabilityLabel.Position = [132 401 372 36];
            app.AirSuperiorityCapabilityLabel.Text = 'Air Superiority Capability';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = air_superiority_exported(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end