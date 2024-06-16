classdef AD_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        IntegratedAirDefenceLabel       matlab.ui.control.Label
        FighterDropDownLabel            matlab.ui.control.Label
        FighterDropDown                 matlab.ui.control.DropDown
        BomberDropDownLabel             matlab.ui.control.Label
        BomberDropDown                  matlab.ui.control.DropDown
        EscortDropDownLabel             matlab.ui.control.Label
        EscortDropDown                  matlab.ui.control.DropDown
        SEADDropDownLabel               matlab.ui.control.Label
        SEADDropDown                    matlab.ui.control.DropDown
        AEWACDropDownLabel              matlab.ui.control.Label
        AEWACDropDown                   matlab.ui.control.DropDown
        AttackHelicopterDropDownLabel   matlab.ui.control.Label
        AttackHelicopterDropDown        matlab.ui.control.DropDown
        AircraftCarrierDropDownLabel    matlab.ui.control.Label
        AircraftCarrierDropDown         matlab.ui.control.DropDown
        AttackShipsDropDownLabel        matlab.ui.control.Label
        AttackShipsDropDown             matlab.ui.control.DropDown
        SubmarinesDropDownLabel         matlab.ui.control.Label
        SubmarinesDropDown              matlab.ui.control.DropDown
        SAMLauncherDropDownLabel        matlab.ui.control.Label
        SAMLauncherDropDown             matlab.ui.control.DropDown
        AAADropDownLabel                matlab.ui.control.Label
        AAADropDown                     matlab.ui.control.DropDown
        ADGunsDropDownLabel             matlab.ui.control.Label
        ADGunsDropDown                  matlab.ui.control.DropDown
        InterceptorsDropDownLabel       matlab.ui.control.Label
        InterceptorsDropDown            matlab.ui.control.DropDown
        AEWDACDropDownLabel             matlab.ui.control.Label
        AEWDACDropDown                  matlab.ui.control.DropDown
        AircraftCarrierDropDown_2Label  matlab.ui.control.Label
        AircraftCarrierDropDown_2       matlab.ui.control.DropDown
        SubmarinesDropDown_2Label       matlab.ui.control.Label
        SubmarinesDropDown_2            matlab.ui.control.DropDown
        SupportShipsDropDownLabel       matlab.ui.control.Label
        SupportShipsDropDown            matlab.ui.control.DropDown
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

            % Create IntegratedAirDefenceLabel
            app.IntegratedAirDefenceLabel = uilabel(app.UIFigure);
            app.IntegratedAirDefenceLabel.FontSize = 30;
            app.IntegratedAirDefenceLabel.FontWeight = 'bold';
            app.IntegratedAirDefenceLabel.FontColor = [0.149 0.149 0.149];
            app.IntegratedAirDefenceLabel.Position = [179 414 329 36];
            app.IntegratedAirDefenceLabel.Text = 'Integrated Air Defence';

            % Create FighterDropDownLabel
            app.FighterDropDownLabel = uilabel(app.UIFigure);
            app.FighterDropDownLabel.HorizontalAlignment = 'right';
            app.FighterDropDownLabel.FontWeight = 'bold';
            app.FighterDropDownLabel.FontColor = [1 0 0];
            app.FighterDropDownLabel.Position = [136 361 46 22];
            app.FighterDropDownLabel.Text = 'Fighter';

            % Create FighterDropDown
            app.FighterDropDown = uidropdown(app.UIFigure);
            app.FighterDropDown.FontWeight = 'bold';
            app.FighterDropDown.FontColor = [1 0 0];
            app.FighterDropDown.Position = [197 361 100 22];

            % Create BomberDropDownLabel
            app.BomberDropDownLabel = uilabel(app.UIFigure);
            app.BomberDropDownLabel.HorizontalAlignment = 'right';
            app.BomberDropDownLabel.FontWeight = 'bold';
            app.BomberDropDownLabel.FontColor = [1 0 0];
            app.BomberDropDownLabel.Position = [132 322 51 22];
            app.BomberDropDownLabel.Text = 'Bomber';

            % Create BomberDropDown
            app.BomberDropDown = uidropdown(app.UIFigure);
            app.BomberDropDown.FontWeight = 'bold';
            app.BomberDropDown.FontColor = [1 0 0];
            app.BomberDropDown.Position = [198 322 100 22];

            % Create EscortDropDownLabel
            app.EscortDropDownLabel = uilabel(app.UIFigure);
            app.EscortDropDownLabel.HorizontalAlignment = 'right';
            app.EscortDropDownLabel.FontWeight = 'bold';
            app.EscortDropDownLabel.FontColor = [1 0 0];
            app.EscortDropDownLabel.Position = [139 280 43 22];
            app.EscortDropDownLabel.Text = 'Escort';

            % Create EscortDropDown
            app.EscortDropDown = uidropdown(app.UIFigure);
            app.EscortDropDown.FontWeight = 'bold';
            app.EscortDropDown.FontColor = [1 0 0];
            app.EscortDropDown.Position = [197 280 100 22];

            % Create SEADDropDownLabel
            app.SEADDropDownLabel = uilabel(app.UIFigure);
            app.SEADDropDownLabel.HorizontalAlignment = 'right';
            app.SEADDropDownLabel.FontWeight = 'bold';
            app.SEADDropDownLabel.FontColor = [1 0 0];
            app.SEADDropDownLabel.Position = [141 242 39 22];
            app.SEADDropDownLabel.Text = 'SEAD';

            % Create SEADDropDown
            app.SEADDropDown = uidropdown(app.UIFigure);
            app.SEADDropDown.FontWeight = 'bold';
            app.SEADDropDown.FontColor = [1 0 0];
            app.SEADDropDown.Position = [195 242 100 22];

            % Create AEWACDropDownLabel
            app.AEWACDropDownLabel = uilabel(app.UIFigure);
            app.AEWACDropDownLabel.HorizontalAlignment = 'right';
            app.AEWACDropDownLabel.FontWeight = 'bold';
            app.AEWACDropDownLabel.FontColor = [1 0 0];
            app.AEWACDropDownLabel.Position = [130 208 50 22];
            app.AEWACDropDownLabel.Text = 'AEWAC';

            % Create AEWACDropDown
            app.AEWACDropDown = uidropdown(app.UIFigure);
            app.AEWACDropDown.FontWeight = 'bold';
            app.AEWACDropDown.FontColor = [1 0 0];
            app.AEWACDropDown.Position = [195 208 100 22];

            % Create AttackHelicopterDropDownLabel
            app.AttackHelicopterDropDownLabel = uilabel(app.UIFigure);
            app.AttackHelicopterDropDownLabel.HorizontalAlignment = 'right';
            app.AttackHelicopterDropDownLabel.FontWeight = 'bold';
            app.AttackHelicopterDropDownLabel.FontColor = [1 0 0];
            app.AttackHelicopterDropDownLabel.Position = [79 167 104 22];
            app.AttackHelicopterDropDownLabel.Text = 'Attack Helicopter';

            % Create AttackHelicopterDropDown
            app.AttackHelicopterDropDown = uidropdown(app.UIFigure);
            app.AttackHelicopterDropDown.FontWeight = 'bold';
            app.AttackHelicopterDropDown.FontColor = [1 0 0];
            app.AttackHelicopterDropDown.Position = [198 167 100 22];

            % Create AircraftCarrierDropDownLabel
            app.AircraftCarrierDropDownLabel = uilabel(app.UIFigure);
            app.AircraftCarrierDropDownLabel.HorizontalAlignment = 'right';
            app.AircraftCarrierDropDownLabel.FontWeight = 'bold';
            app.AircraftCarrierDropDownLabel.FontColor = [1 0 0];
            app.AircraftCarrierDropDownLabel.Position = [92 126 91 22];
            app.AircraftCarrierDropDownLabel.Text = 'Aircraft Carrier';

            % Create AircraftCarrierDropDown
            app.AircraftCarrierDropDown = uidropdown(app.UIFigure);
            app.AircraftCarrierDropDown.FontWeight = 'bold';
            app.AircraftCarrierDropDown.FontColor = [1 0 0];
            app.AircraftCarrierDropDown.Position = [198 126 100 22];

            % Create AttackShipsDropDownLabel
            app.AttackShipsDropDownLabel = uilabel(app.UIFigure);
            app.AttackShipsDropDownLabel.HorizontalAlignment = 'right';
            app.AttackShipsDropDownLabel.FontWeight = 'bold';
            app.AttackShipsDropDownLabel.FontColor = [1 0 0];
            app.AttackShipsDropDownLabel.Position = [102 85 78 22];
            app.AttackShipsDropDownLabel.Text = 'Attack Ships';

            % Create AttackShipsDropDown
            app.AttackShipsDropDown = uidropdown(app.UIFigure);
            app.AttackShipsDropDown.FontWeight = 'bold';
            app.AttackShipsDropDown.FontColor = [1 0 0];
            app.AttackShipsDropDown.Position = [195 85 100 22];

            % Create SubmarinesDropDownLabel
            app.SubmarinesDropDownLabel = uilabel(app.UIFigure);
            app.SubmarinesDropDownLabel.HorizontalAlignment = 'right';
            app.SubmarinesDropDownLabel.FontWeight = 'bold';
            app.SubmarinesDropDownLabel.FontColor = [1 0 0];
            app.SubmarinesDropDownLabel.Position = [106 44 74 22];
            app.SubmarinesDropDownLabel.Text = 'Submarines';

            % Create SubmarinesDropDown
            app.SubmarinesDropDown = uidropdown(app.UIFigure);
            app.SubmarinesDropDown.FontWeight = 'bold';
            app.SubmarinesDropDown.FontColor = [1 0 0];
            app.SubmarinesDropDown.Position = [195 44 100 22];

            % Create SAMLauncherDropDownLabel
            app.SAMLauncherDropDownLabel = uilabel(app.UIFigure);
            app.SAMLauncherDropDownLabel.HorizontalAlignment = 'right';
            app.SAMLauncherDropDownLabel.FontWeight = 'bold';
            app.SAMLauncherDropDownLabel.FontColor = [0 0.4471 0.7412];
            app.SAMLauncherDropDownLabel.Position = [357 361 90 22];
            app.SAMLauncherDropDownLabel.Text = 'SAM Launcher';

            % Create SAMLauncherDropDown
            app.SAMLauncherDropDown = uidropdown(app.UIFigure);
            app.SAMLauncherDropDown.FontWeight = 'bold';
            app.SAMLauncherDropDown.FontColor = [0 0.4471 0.7412];
            app.SAMLauncherDropDown.Position = [462 361 100 22];

            % Create AAADropDownLabel
            app.AAADropDownLabel = uilabel(app.UIFigure);
            app.AAADropDownLabel.HorizontalAlignment = 'right';
            app.AAADropDownLabel.FontWeight = 'bold';
            app.AAADropDownLabel.FontColor = [0 0.4471 0.7412];
            app.AAADropDownLabel.Position = [417 322 31 22];
            app.AAADropDownLabel.Text = 'AAA';

            % Create AAADropDown
            app.AAADropDown = uidropdown(app.UIFigure);
            app.AAADropDown.FontWeight = 'bold';
            app.AAADropDown.FontColor = [0 0.4471 0.7412];
            app.AAADropDown.Position = [463 322 100 22];

            % Create ADGunsDropDownLabel
            app.ADGunsDropDownLabel = uilabel(app.UIFigure);
            app.ADGunsDropDownLabel.HorizontalAlignment = 'right';
            app.ADGunsDropDownLabel.FontWeight = 'bold';
            app.ADGunsDropDownLabel.FontColor = [0 0.4471 0.7412];
            app.ADGunsDropDownLabel.Position = [390 280 57 22];
            app.ADGunsDropDownLabel.Text = 'AD Guns';

            % Create ADGunsDropDown
            app.ADGunsDropDown = uidropdown(app.UIFigure);
            app.ADGunsDropDown.FontWeight = 'bold';
            app.ADGunsDropDown.FontColor = [0 0.4471 0.7412];
            app.ADGunsDropDown.Position = [462 280 100 22];

            % Create InterceptorsDropDownLabel
            app.InterceptorsDropDownLabel = uilabel(app.UIFigure);
            app.InterceptorsDropDownLabel.HorizontalAlignment = 'right';
            app.InterceptorsDropDownLabel.FontWeight = 'bold';
            app.InterceptorsDropDownLabel.FontColor = [0 0.4471 0.7412];
            app.InterceptorsDropDownLabel.Position = [370 242 75 22];
            app.InterceptorsDropDownLabel.Text = 'Interceptors';

            % Create InterceptorsDropDown
            app.InterceptorsDropDown = uidropdown(app.UIFigure);
            app.InterceptorsDropDown.FontWeight = 'bold';
            app.InterceptorsDropDown.FontColor = [0 0.4471 0.7412];
            app.InterceptorsDropDown.Position = [460 242 100 22];

            % Create AEWDACDropDownLabel
            app.AEWDACDropDownLabel = uilabel(app.UIFigure);
            app.AEWDACDropDownLabel.HorizontalAlignment = 'right';
            app.AEWDACDropDownLabel.FontWeight = 'bold';
            app.AEWDACDropDownLabel.FontColor = [0 0.4471 0.7412];
            app.AEWDACDropDownLabel.Position = [386 208 59 22];
            app.AEWDACDropDownLabel.Text = 'AEWDAC';

            % Create AEWDACDropDown
            app.AEWDACDropDown = uidropdown(app.UIFigure);
            app.AEWDACDropDown.FontWeight = 'bold';
            app.AEWDACDropDown.FontColor = [0 0.4471 0.7412];
            app.AEWDACDropDown.Position = [460 208 100 22];

            % Create AircraftCarrierDropDown_2Label
            app.AircraftCarrierDropDown_2Label = uilabel(app.UIFigure);
            app.AircraftCarrierDropDown_2Label.HorizontalAlignment = 'right';
            app.AircraftCarrierDropDown_2Label.FontWeight = 'bold';
            app.AircraftCarrierDropDown_2Label.FontColor = [0 0.4471 0.7412];
            app.AircraftCarrierDropDown_2Label.Position = [357 167 91 22];
            app.AircraftCarrierDropDown_2Label.Text = 'Aircraft Carrier';

            % Create AircraftCarrierDropDown_2
            app.AircraftCarrierDropDown_2 = uidropdown(app.UIFigure);
            app.AircraftCarrierDropDown_2.FontWeight = 'bold';
            app.AircraftCarrierDropDown_2.FontColor = [0 0.4471 0.7412];
            app.AircraftCarrierDropDown_2.Position = [463 167 100 22];

            % Create SubmarinesDropDown_2Label
            app.SubmarinesDropDown_2Label = uilabel(app.UIFigure);
            app.SubmarinesDropDown_2Label.HorizontalAlignment = 'right';
            app.SubmarinesDropDown_2Label.FontWeight = 'bold';
            app.SubmarinesDropDown_2Label.FontColor = [0 0.4471 0.7412];
            app.SubmarinesDropDown_2Label.Position = [374 126 74 22];
            app.SubmarinesDropDown_2Label.Text = 'Submarines';

            % Create SubmarinesDropDown_2
            app.SubmarinesDropDown_2 = uidropdown(app.UIFigure);
            app.SubmarinesDropDown_2.FontWeight = 'bold';
            app.SubmarinesDropDown_2.FontColor = [0 0.4471 0.7412];
            app.SubmarinesDropDown_2.Position = [463 126 100 22];

            % Create SupportShipsDropDownLabel
            app.SupportShipsDropDownLabel = uilabel(app.UIFigure);
            app.SupportShipsDropDownLabel.HorizontalAlignment = 'right';
            app.SupportShipsDropDownLabel.FontWeight = 'bold';
            app.SupportShipsDropDownLabel.FontColor = [0 0.4471 0.7412];
            app.SupportShipsDropDownLabel.Position = [358 85 87 22];
            app.SupportShipsDropDownLabel.Text = 'Support Ships';

            % Create SupportShipsDropDown
            app.SupportShipsDropDown = uidropdown(app.UIFigure);
            app.SupportShipsDropDown.FontWeight = 'bold';
            app.SupportShipsDropDown.FontColor = [0 0.4471 0.7412];
            app.SupportShipsDropDown.Position = [460 85 100 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = AD_exported(varargin)

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