classdef scenario_map3_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure              matlab.ui.Figure
        Blue_Mountain_InfDiv  matlab.ui.control.Image
        time                  matlab.ui.control.NumericEditField
        TimeLabel             matlab.ui.control.Label
        BDam                  matlab.ui.control.NumericEditField
        DamageLabel_2         matlab.ui.control.Label
        RDam                  matlab.ui.control.NumericEditField
        Image3                matlab.ui.control.Image
        Blue_InfDiv           matlab.ui.control.Image
        Blue_AFS              matlab.ui.control.Image
        Blue_T72Bgd           matlab.ui.control.Image
        Red_Arty              matlab.ui.control.Image
        RED_MID               matlab.ui.control.Image
        Red_ArmrRgt           matlab.ui.control.Image
        Red_AD                matlab.ui.control.Image
        DamageLabel_3         matlab.ui.control.Label
        RDam_2                matlab.ui.control.NumericEditField
        DamageLabel_4         matlab.ui.control.Label
        BDam_2                matlab.ui.control.NumericEditField
        Red_InfRgt            matlab.ui.control.Image
        DamageLabel_5         matlab.ui.control.Label
    end

    
    properties (Access = private)
        CallingApp % Description
    end
    
   
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, mainapp, x, y, time, RDam, BDam)
            app.time.Value=time;
            if(strcmp(app.RED_MID.ImageSource,x))
                P1=app.RED_MID.Position;
                Red=app.RED_MID;
            elseif(strcmp(app.Red_Arty.ImageSource,x))
                P1=app.Red_Arty.Position;
                Red=app.Red_Arty;
            elseif(strcmp(app.Red_AD.ImageSource,x))
                P1=app.Red_AD.Position;
                Red=app.Red_AD;
            elseif(strcmp(app.Red_ArmrRgt.ImageSource,x))
                P1=app.Red_ArmrRgt.Position;
                Red=app.Red_ArmrRgt;
            elseif(strcmp(app.Red_InfRgt.ImageSource,x))
                P1=app.Red_InfRgt.Position;
                Red=app.Red_InfRgt;
                
            end
            
            if(strcmp(app.Blue_T72Bgd.ImageSource,y))
                P2=app.Blue_T72Bgd.Position;
                Blue=app.Blue_T72Bgd;
            elseif(strcmp(app.Blue_AFS.ImageSource,y))
                P2=app.Blue_AFS.Position;
                Blue=app.Blue_AFS;
            elseif(strcmp(app.Blue_InfDiv.ImageSource,y))
                P2=app.Blue_InfDiv.Position;
                Blue=app.Blue_InfDiv;
            elseif(strcmp(app.Blue_Mountain_InfDiv.ImageSource,y))
                P2=app.Blue_Mountain_InfDiv.Position;
                Blue=app.Blue_Mountain_InfDiv;
            end
            
            
            
            
            
%             app.Image.ImageSource=x;

%             app.Image.Position=[800 600 0 0];
%             app.Blue_Mountain_InfDiv.ImageSource=y;
            app.RDam.Value=0;
            app.BDam.Value=0;
             app.RDam_2.Value=0;
            app.BDam_2.Value=0;
            
            step=(P1-P2)/time
%             step=round(step,0);
           app.RDam.Position=P1+[15 105 -60 -80]
            app.DamageLabel_2.Position=P1+[20 65 0 0];
            
              app.BDam.Position=P2+[15 -40 -60 -70]
              app.DamageLabel_5.Position=P2+[55 -74 0 0];
            
            for i=1:1:time
                app.time.Value=i;
                app.RDam.Value=app.RDam.Value+RDam/time;
                app.BDam.Value=app.BDam.Value+BDam/time;
                app.RDam_2.Value=app.RDam.Value;
                app.BDam_2.Value=app.BDam.Value;
%                 app.RDam.Position=P1+[10 10 0 0]
                if(i<time-2)
%                 app.Image.Position=app.Image.Position+[-step(1) -step(2) 0 0];
                Blue.Position=Blue.Position+[step(1) step(2) 0 0];
                app.BDam.Position=app.BDam.Position+[step(1) step(2) 0 0];
                
%                 app.RDam.Position=P1+[-step(1)+10 -step(2)+10 0 0];
%                 app.DamageLabel_2.Position=P1+[-step(1)+10 -step(2)+10 0 0];
                app.DamageLabel_5.Position=app.DamageLabel_5.Position+[step(1) step(2) 0 0];
                app.RDam_2.Value=app.RDam.Value;
                app.BDam_2.Value=app.BDam.Value;
                pause(2);
                else
%                  app.Image.Position=app.Image.Position;
                 P1=P1;
                 app.RDam.Position=app.RDam.Position;  
                 app.DamageLabel_5.Position=app.DamageLabel_5.Position;
                 app.RDam_2.Value=app.RDam.Value;
                app.BDam_2.Value=app.BDam.Value;
                 app.BDam.Value=app.BDam.Value+BDam/time;
                   pause(2)
                end
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 935 691];
            app.UIFigure.Name = 'MATLAB App';

            % Create Blue_Mountain_InfDiv
            app.Blue_Mountain_InfDiv = uiimage(app.UIFigure);
            app.Blue_Mountain_InfDiv.Position = [677 70 90 92];
            app.Blue_Mountain_InfDiv.ImageSource = '8MountainInfDiv.jpg';

            % Create time
            app.time = uieditfield(app.UIFigure, 'numeric');
            app.time.Position = [11 624 100 22];

            % Create TimeLabel
            app.TimeLabel = uilabel(app.UIFigure);
            app.TimeLabel.Position = [29 650 35 22];
            app.TimeLabel.Text = 'Time ';

            % Create BDam
            app.BDam = uieditfield(app.UIFigure, 'numeric');
            app.BDam.ValueDisplayFormat = '%.1f';
            app.BDam.FontColor = [1 1 1];
            app.BDam.BackgroundColor = [0.0745 0.6235 1];
            app.BDam.Position = [779 289 38 22];

            % Create DamageLabel_2
            app.DamageLabel_2 = uilabel(app.UIFigure);
            app.DamageLabel_2.HorizontalAlignment = 'right';
            app.DamageLabel_2.FontColor = [1 0 0];
            app.DamageLabel_2.Position = [832 335 72 22];
            app.DamageLabel_2.Text = '% Damage';

            % Create RDam
            app.RDam = uieditfield(app.UIFigure, 'numeric');
            app.RDam.ValueDisplayFormat = '%.1f';
            app.RDam.Editable = 'off';
            app.RDam.FontColor = [1 1 1];
            app.RDam.BackgroundColor = [1 0 0];
            app.RDam.Position = [779 335 39 22];

            % Create Image3
            app.Image3 = uiimage(app.UIFigure);
            app.Image3.Enable = 'off';
            app.Image3.HorizontalAlignment = 'right';
            app.Image3.Position = [6 6 914 667];
            app.Image3.ImageSource = 'deployment_map_cropped1.jpg';

            % Create Blue_InfDiv
            app.Blue_InfDiv = uiimage(app.UIFigure);
            app.Blue_InfDiv.Position = [468 70 90 92];
            app.Blue_InfDiv.ImageSource = '3InfDiv.jpg';

            % Create Blue_AFS
            app.Blue_AFS = uiimage(app.UIFigure);
            app.Blue_AFS.Position = [260 198 90 92];
            app.Blue_AFS.ImageSource = 'LehAfs.jpg';

            % Create Blue_T72Bgd
            app.Blue_T72Bgd = uiimage(app.UIFigure);
            app.Blue_T72Bgd.Position = [110 383 90 92];
            app.Blue_T72Bgd.ImageSource = 'T72Bgd.jpg';

            % Create Red_Arty
            app.Red_Arty = uiimage(app.UIFigure);
            app.Red_Arty.Position = [672 413 102 100];
            app.Red_Arty.ImageSource = '18ArtyRgt.jpg';

            % Create RED_MID
            app.RED_MID = uiimage(app.UIFigure);
            app.RED_MID.Position = [533 577 102 100];
            app.RED_MID.ImageSource = 'MIDiv.jpg';

            % Create Red_ArmrRgt
            app.Red_ArmrRgt = uiimage(app.UIFigure);
            app.Red_ArmrRgt.Position = [260 546 102 100];
            app.Red_ArmrRgt.ImageSource = 'RedArmourRgt.jpg';

            % Create Red_AD
            app.Red_AD = uiimage(app.UIFigure);
            app.Red_AD.Position = [417 400 102 100];
            app.Red_AD.ImageSource = 'ADRgt.jpg';

            % Create DamageLabel_3
            app.DamageLabel_3 = uilabel(app.UIFigure);
            app.DamageLabel_3.HorizontalAlignment = 'right';
            app.DamageLabel_3.FontColor = [1 0 0];
            app.DamageLabel_3.Position = [853 616 72 22];
            app.DamageLabel_3.Text = '% Damage';

            % Create RDam_2
            app.RDam_2 = uieditfield(app.UIFigure, 'numeric');
            app.RDam_2.ValueDisplayFormat = '%.1f';
            app.RDam_2.Editable = 'off';
            app.RDam_2.FontColor = [1 1 1];
            app.RDam_2.BackgroundColor = [1 0 0];
            app.RDam_2.Position = [810 616 44 22];

            % Create DamageLabel_4
            app.DamageLabel_4 = uilabel(app.UIFigure);
            app.DamageLabel_4.FontColor = [0 0.4471 0.7412];
            app.DamageLabel_4.Position = [852 650 68 22];
            app.DamageLabel_4.Text = ' % Damage';

            % Create BDam_2
            app.BDam_2 = uieditfield(app.UIFigure, 'numeric');
            app.BDam_2.ValueDisplayFormat = '%.1f';
            app.BDam_2.FontColor = [1 1 1];
            app.BDam_2.BackgroundColor = [0.0745 0.6235 1];
            app.BDam_2.Position = [810 650 43 22];

            % Create Red_InfRgt
            app.Red_InfRgt = uiimage(app.UIFigure);
            app.Red_InfRgt.Position = [589 284 102 100];
            app.Red_InfRgt.ImageSource = '17InfRgt.jpg';

            % Create DamageLabel_5
            app.DamageLabel_5 = uilabel(app.UIFigure);
            app.DamageLabel_5.FontColor = [0 0.4471 0.7412];
            app.DamageLabel_5.Position = [832 289 65 22];
            app.DamageLabel_5.Text = '% Damage';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = scenario_map3_exported(varargin)

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