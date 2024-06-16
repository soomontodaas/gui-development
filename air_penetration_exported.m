classdef air_penetration_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        AirPenetrationCapabilityLabel  matlab.ui.control.Label
        AEWAircraftDropDownLabel       matlab.ui.control.Label
        AEWAircraftDropDown            matlab.ui.control.DropDown
        InterceptorAircraftDropDownLabel  matlab.ui.control.Label
        InterceptorAircraftDropDown    matlab.ui.control.DropDown
        SAmSystemDropDownLabel         matlab.ui.control.Label
        SAmSystemDropDown              matlab.ui.control.DropDown
        SEADDropDownLabel              matlab.ui.control.Label
        SEADDropDown                   matlab.ui.control.DropDown
        StealthAircraftDropDownLabel   matlab.ui.control.Label
        StealthAircraftDropDown        matlab.ui.control.DropDown
        AbilityofStrikeAircraftDropDownLabel  matlab.ui.control.Label
        AbilityofStrikeAircraftDropDown  matlab.ui.control.DropDown
        IADofDefenderDropDownLabel     matlab.ui.control.Label
        IADofDefenderDropDown          matlab.ui.control.DropDown
        SeekerDropDownLabel            matlab.ui.control.Label
        SeekerDropDown                 matlab.ui.control.DropDown
        RangerDropDownLabel            matlab.ui.control.Label
        RangerDropDown                 matlab.ui.control.DropDown
    end

    
    properties (Access = private)
        CallingApp
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

            % Create AirPenetrationCapabilityLabel
            app.AirPenetrationCapabilityLabel = uilabel(app.UIFigure);
            app.AirPenetrationCapabilityLabel.FontSize = 30;
            app.AirPenetrationCapabilityLabel.FontWeight = 'bold';
            app.AirPenetrationCapabilityLabel.FontColor = [0.149 0.149 0.149];
            app.AirPenetrationCapabilityLabel.Position = [132 401 378 36];
            app.AirPenetrationCapabilityLabel.Text = 'Air Penetration Capability';

            % Create AEWAircraftDropDownLabel
            app.AEWAircraftDropDownLabel = uilabel(app.UIFigure);
            app.AEWAircraftDropDownLabel.HorizontalAlignment = 'right';
            app.AEWAircraftDropDownLabel.Position = [210 361 74 22];
            app.AEWAircraftDropDownLabel.Text = 'AEW Aircraft';

            % Create AEWAircraftDropDown
            app.AEWAircraftDropDown = uidropdown(app.UIFigure);
            app.AEWAircraftDropDown.Position = [299 361 100 22];

            % Create InterceptorAircraftDropDownLabel
            app.InterceptorAircraftDropDownLabel = uilabel(app.UIFigure);
            app.InterceptorAircraftDropDownLabel.HorizontalAlignment = 'right';
            app.InterceptorAircraftDropDownLabel.Position = [181 322 104 22];
            app.InterceptorAircraftDropDownLabel.Text = 'Interceptor Aircraft';

            % Create InterceptorAircraftDropDown
            app.InterceptorAircraftDropDown = uidropdown(app.UIFigure);
            app.InterceptorAircraftDropDown.Position = [300 322 100 22];

            % Create SAmSystemDropDownLabel
            app.SAmSystemDropDownLabel = uilabel(app.UIFigure);
            app.SAmSystemDropDownLabel.HorizontalAlignment = 'right';
            app.SAmSystemDropDownLabel.Position = [209 280 75 22];
            app.SAmSystemDropDownLabel.Text = 'SAm System';

            % Create SAmSystemDropDown
            app.SAmSystemDropDown = uidropdown(app.UIFigure);
            app.SAmSystemDropDown.Position = [299 280 100 22];

            % Create SEADDropDownLabel
            app.SEADDropDownLabel = uilabel(app.UIFigure);
            app.SEADDropDownLabel.HorizontalAlignment = 'right';
            app.SEADDropDownLabel.Position = [244 242 38 22];
            app.SEADDropDownLabel.Text = 'SEAD';

            % Create SEADDropDown
            app.SEADDropDown = uidropdown(app.UIFigure);
            app.SEADDropDown.Position = [297 242 100 22];

            % Create StealthAircraftDropDownLabel
            app.StealthAircraftDropDownLabel = uilabel(app.UIFigure);
            app.StealthAircraftDropDownLabel.HorizontalAlignment = 'right';
            app.StealthAircraftDropDownLabel.Position = [198 208 84 22];
            app.StealthAircraftDropDownLabel.Text = 'Stealth Aircraft';

            % Create StealthAircraftDropDown
            app.StealthAircraftDropDown = uidropdown(app.UIFigure);
            app.StealthAircraftDropDown.Position = [297 208 100 22];

            % Create AbilityofStrikeAircraftDropDownLabel
            app.AbilityofStrikeAircraftDropDownLabel = uilabel(app.UIFigure);
            app.AbilityofStrikeAircraftDropDownLabel.HorizontalAlignment = 'right';
            app.AbilityofStrikeAircraftDropDownLabel.Position = [159 167 126 22];
            app.AbilityofStrikeAircraftDropDownLabel.Text = 'Ability of Strike Aircraft';

            % Create AbilityofStrikeAircraftDropDown
            app.AbilityofStrikeAircraftDropDown = uidropdown(app.UIFigure);
            app.AbilityofStrikeAircraftDropDown.Position = [300 167 100 22];

            % Create IADofDefenderDropDownLabel
            app.IADofDefenderDropDownLabel = uilabel(app.UIFigure);
            app.IADofDefenderDropDownLabel.HorizontalAlignment = 'right';
            app.IADofDefenderDropDownLabel.Position = [193 126 92 22];
            app.IADofDefenderDropDownLabel.Text = 'IAD of Defender';

            % Create IADofDefenderDropDown
            app.IADofDefenderDropDown = uidropdown(app.UIFigure);
            app.IADofDefenderDropDown.Position = [300 126 100 22];

            % Create SeekerDropDownLabel
            app.SeekerDropDownLabel = uilabel(app.UIFigure);
            app.SeekerDropDownLabel.HorizontalAlignment = 'right';
            app.SeekerDropDownLabel.Position = [238 85 44 22];
            app.SeekerDropDownLabel.Text = 'Seeker';

            % Create SeekerDropDown
            app.SeekerDropDown = uidropdown(app.UIFigure);
            app.SeekerDropDown.Position = [297 85 100 22];

            % Create RangerDropDownLabel
            app.RangerDropDownLabel = uilabel(app.UIFigure);
            app.RangerDropDownLabel.HorizontalAlignment = 'right';
            app.RangerDropDownLabel.Position = [237 44 45 22];
            app.RangerDropDownLabel.Text = 'Ranger';

            % Create RangerDropDown
            app.RangerDropDown = uidropdown(app.UIFigure);
            app.RangerDropDown.Position = [297 44 100 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = air_penetration_exported(varargin)

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