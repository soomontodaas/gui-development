classdef main_window_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        MainWindowUIFigure    matlab.ui.Figure
        LACLADAKButton        matlab.ui.control.Button
        SAMPLESCENARIOButton  matlab.ui.control.Button
        EXTRIDENTButton       matlab.ui.control.Button
        MINICOYISLANDButton   matlab.ui.control.Button
        JAYANTButton          matlab.ui.control.Button
    end

    
    properties (Access = private)
        DialogApp % Description
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: LACLADAKButton
        function LACLADAKButtonPushed(app, event)
            app.DialogApp=Combat_Potential_Forces_3p3(app);
        end

        % Button pushed function: SAMPLESCENARIOButton
        function SAMPLESCENARIOButtonPushed(app, event)
             app.DialogApp=Combat_Potential_Forces_3p4_southChinaSea(app);
        end

        % Button pushed function: EXTRIDENTButton
        function EXTRIDENTButtonPushed(app, event)
            app.DialogApp=Combat_Potential_Forces_3p4_ExTrident(app);
        end

        % Button pushed function: MINICOYISLANDButton
        function MINICOYISLANDButtonPushed(app, event)
            app.DialogApp=Combat_Potential_Forces_3p4_minicoy_island(app);
        end

        % Button pushed function: JAYANTButton
        function JAYANTButtonPushed(app, event)
            app.DialogApp=Multi_Resolution_Combat_Potential(app);
%         app.DialogApp=MRCP(app);
 
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create MainWindowUIFigure and hide until all components are created
            app.MainWindowUIFigure = uifigure('Visible', 'off');
            app.MainWindowUIFigure.Position = [500 500 208 303];
            app.MainWindowUIFigure.Name = 'Main Window';

            % Create LACLADAKButton
            app.LACLADAKButton = uibutton(app.MainWindowUIFigure, 'push');
            app.LACLADAKButton.ButtonPushedFcn = createCallbackFcn(app, @LACLADAKButtonPushed, true);
            app.LACLADAKButton.Position = [35 254 143 22];
            app.LACLADAKButton.Text = 'LAC LADAK';

            % Create SAMPLESCENARIOButton
            app.SAMPLESCENARIOButton = uibutton(app.MainWindowUIFigure, 'push');
            app.SAMPLESCENARIOButton.ButtonPushedFcn = createCallbackFcn(app, @SAMPLESCENARIOButtonPushed, true);
            app.SAMPLESCENARIOButton.Position = [35 205 143 22];
            app.SAMPLESCENARIOButton.Text = 'SAMPLE SCENARIO';

            % Create EXTRIDENTButton
            app.EXTRIDENTButton = uibutton(app.MainWindowUIFigure, 'push');
            app.EXTRIDENTButton.ButtonPushedFcn = createCallbackFcn(app, @EXTRIDENTButtonPushed, true);
            app.EXTRIDENTButton.Position = [37 96 143 22];
            app.EXTRIDENTButton.Text = 'EX-TRIDENT';

            % Create MINICOYISLANDButton
            app.MINICOYISLANDButton = uibutton(app.MainWindowUIFigure, 'push');
            app.MINICOYISLANDButton.ButtonPushedFcn = createCallbackFcn(app, @MINICOYISLANDButtonPushed, true);
            app.MINICOYISLANDButton.Position = [35 152 143 22];
            app.MINICOYISLANDButton.Text = 'MINICOY ISLAND';

            % Create JAYANTButton
            app.JAYANTButton = uibutton(app.MainWindowUIFigure, 'push');
            app.JAYANTButton.ButtonPushedFcn = createCallbackFcn(app, @JAYANTButtonPushed, true);
            app.JAYANTButton.Position = [38 33 143 22];
            app.JAYANTButton.Text = 'JAYANT';

            % Show the figure after all components are created
            app.MainWindowUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = main_window_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.MainWindowUIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.MainWindowUIFigure)
        end
    end
end