classdef minicoy_island_scenario_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        SampleScenarioMinicoyIslandUIFigure  matlab.ui.Figure
        Image                      matlab.ui.control.Image
        Image2                     matlab.ui.control.Image
        Image3                     matlab.ui.control.Image
        Image4                     matlab.ui.control.Image
        Image5                     matlab.ui.control.Image
        Image6                     matlab.ui.control.Image
        Image7                     matlab.ui.control.Image
        Image8                     matlab.ui.control.Image
        Image9                     matlab.ui.control.Image
        Image10                    matlab.ui.control.Image
        Image11                    matlab.ui.control.Image
        MessageEditFieldLabel      matlab.ui.control.Label
        MessageEditField           matlab.ui.control.EditField
        ProceedtoPortButton        matlab.ui.control.Button
        SecurePortButton           matlab.ui.control.Button
        MoveSendThemsgtoLPDButton  matlab.ui.control.Button
        SendthemsgtoMI17Button     matlab.ui.control.Button
        Image12                    matlab.ui.control.Image
        Image13                    matlab.ui.control.Image
        SecureAirStripeButton      matlab.ui.control.Button
    end

    
    properties (Access = public)
        CallingApp; % Description
        time1;
        step1;
        step2;
%         MessageEditField
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, mainapp)
            app.CallingApp=mainapp;
            p1=app.Image10.Position;
            p2=app.Image13.Position;
            p3=app.Image11.Position;
            step1=(p1-p2)/70;
            step2=(p3-p2)/70;
            
            for time=1:1:70;
                 app.time1=time;
                if(time<50)
                app.Image9.Position=app.Image9.Position+[-5 -5/2 0 0];
                app.Image10.Position=app.Image10.Position+[-step1(1)  -step1(2) 0 0];
                app.Image11.Position=app.Image11.Position+[-step2(1)  -step2(2) 0 0];
                pause(1);
                app.MessageEditField.Value="time="+time+"min"+"C130a: SF and MARCOS are on the way to dropping point";
                pause(.5)
                app.MessageEditField.Value="time="+time+"min"+"C130b: 100 amph troops to airstrip";
                pause(.5)
                app.MessageEditField.Value="time="+time+"min"+"C130c: 100 amph troops to airstrip";
                pause(.5)
                elseif(time<51)
                    app.MessageEditField.Value="SF and MARCOS dropped";
                    app.Image9.ImageSource='SF.jpg';
                    app.Image9.Position=app.Image9.Position+[-5 -5/2 0 0];
                   app.Image10.Position=app.Image10.Position+[-step1(1)  -step1(2) 0 0];
                app.Image11.Position=app.Image11.Position+[-step2(1)  -step2(2) 0 0];
                elseif(time>50 && time<70)
                    app.MessageEditField.Value="SF and MARCOS dropped";
                    
                      app.Image10.Position=app.Image10.Position+[-step1(1)  -step1(2) 0 0];
                app.Image11.Position=app.Image11.Position+[-step2(1)  -step2(2) 0 0];
%                  app.MessageEditField.Value="C130b: 100 amph troops to airstrip";
%                 pause(.5)
%                 app.MessageEditField.Value="C130c: 100 amph troops to airstrip";
                pause(.5)
                else
                app.MessageEditField.Value="C130b: dropped 100 amph troops to airstrip";
                pause(.5)
                app.MessageEditField.Value="C130c: dropped 100 amph troops to airstrip";
                pause(.5)
                app.MessageEditField.Value="SF and MARCOS dropped";
                    
                end
                
            end
        end

        % Button pushed function: ProceedtoPortButton
        function ProceedtoPortButtonPushed(app, event)
            
            for time=app.time1:1:app.time1+20
                if(strcmp(app.MessageEditField.Value,"SF and MARCOS dropped"))
                     app.ProceedtoPortButton.Enable='off'
                     
                    if(time<app.time1+20)
                  app.Image9.Position=app.Image9.Position+[-5 -5/2 0 0];
%                    app.Image10.Position=app.Image10.Position+[-app.step1(1)  -app.step1(2) 0 0];
%                 app.Image11.Position=app.Image11.Position+[-app.step2(1)  -app.step2(2) 0 0];
                  
                  app.MessageEditField.Value='SF&MARCOS are boating towards Island';
                  pause(.5);
                  app.MessageEditField.Value="SF and MARCOS dropped";
                    else
                         app.MessageEditField.Value="C130b: dropped 100 amph troops to airstrip";
                            pause(.5)
                            app.MessageEditField.Value="C130c: dropped 100 amph troops to airstrip";
                        app.MessageEditField.Value="SF and MARCOS reached Island";
                        
                       
                    end
                else
                    app.MessageEditField.Value="SF and MARCOS not yet dropped";
                    pause(.5);
                end
            end
            
            
        end

        % Button pushed function: SecurePortButton
        function SecurePortButtonPushed(app, event)
           if(strcmp(app.MessageEditField.Value,"SF and MARCOS reached Island"))
               app.SecurePortButton.Enable='off';
               casualty_ANE=0;
               casualty_SF_MARCOS=0;
               for i=1:1:10
                   app.SecurePortButton.Enable='off'
                   if(i<10)
                       casualty_ANE=casualty_ANE+0.09*i;
                       casuaty_SF_MARCOS=casualty_SF_MARCOS+0.01*i;
                       app.MessageEditField.Value="ANE Casualty="+casualty_ANE+'%'+" "+"SF&MARCOS Casualty="+casuaty_SF_MARCOS+"%";
                       pause(.5)
                   else
                       app.MessageEditField.Value='port is secured'
                       
                   end
               end
               
               
           end
        end

        % Button pushed function: MoveSendThemsgtoLPDButton
        function MoveSendThemsgtoLPDButtonPushed(app, event)
             if(strcmp(app.MessageEditField.Value,"port is secured"))
                 app.MoveSendThemsgtoLPDButton.Enable='off';
                 for i=1:1:30
                     if(i<2)
                     app.Image9.Position=app.Image9.Position+[-5 5/2 0 0];
                     app.MessageEditField.Value="sent the msg to INS and LCV: drop the Amph Force to secure the Island ";
                     app.Image2.Position=app.Image2.Position+[-3 -3 0 0];
                     app.Image3.Position=app.Image3.Position+[-5 0 0 0];
                     pause(.5)
                     elseif(i<10 && i>1)
                     app.Image9.Position=app.Image9.Position+[-5 5/2 0 0];
                     app.MessageEditField.Value="msg received by INS and LCV: proceeding to the Island ";
                     app.Image2.Position=app.Image2.Position+[-3 -3 0 0];
                     app.Image3.Position=app.Image3.Position+[-5 0 0 0];
                     pause(.5)
                     elseif(i<30 && i>10)
%                      app.Image9.Position=app.Image9.Position+[-5 5/2 0 0];
                     app.MessageEditField.Value="msg received by INS and LCV: proceeding to the Island ";
                     app.Image2.Position=app.Image2.Position+[-3 -3 0 0];
                     app.Image3.Position=app.Image3.Position+[-5 0 0 0];
                     pause(.5)
                     else
                     app.Image9.Position=app.Image9.Position+[-5 5/2 0 0];
                     app.MessageEditField.Value="Amph force Dropped ";
                     app.Image2.Position=app.Image2.Position+[-3 -3 0 0];
                     app.Image3.Position=app.Image3.Position+[-5 0 0 0];
                     pause(.5)
                     app.MessageEditField.Value="the port and airstrip are secured ";
                     pause(.5)
                     app.MessageEditField.Value="sent the msg to Mi17 Helicopter ";
                     end
                 end
             end
        end

        % Button pushed function: SendthemsgtoMI17Button
        function SendthemsgtoMI17ButtonPushed(app, event)
              if(strcmp(app.MessageEditField.Value,"sent the msg to Mi17 Helicopter "))
                 app.SendthemsgtoMI17Button.Enable='off';
               for i=1:1:30
                   if(i<30)
                    app.Image13.Position=app.Image13.Position+[0 -3 0 0];
                    pause(.5)
                    app.MessageEditField.Value="Mi 17 Helicopter is ferrying Amph troops ";
                   else
                    app.Image13.Position=app.Image13.Position+[0 -3 0 0];
                    pause(.5)
                    app.MessageEditField.Value="Amph force is dropped";
                   end
               end
               
              end
        end

        % Button pushed function: SecureAirStripeButton
        function SecureAirStripeButtonPushed(app, event)
             if(strcmp(app.MessageEditField.Value,"Amph force is dropped"))
               app.SecureAirStripeButton.Enable='off';
               casualty_ANE=0;
               casualty_SF_MARCOS=0;
               for i=1:1:10
                   app.SecureAirStripeButton.Enable='off'
                   if(i<10)
                       casualty_ANE=casualty_ANE+0.09*i;
                       casuaty_SF_MARCOS=casualty_SF_MARCOS+0.01*i;
                       app.MessageEditField.Value="ANE Casualty="+casualty_ANE+'%'+" "+"SF&MARCOS Casualty="+casuaty_SF_MARCOS+"%";
                       pause(.5)
                   else
                       app.MessageEditField.Value='Air Stripe is secured'
                       
                   end
               end
               
               
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create SampleScenarioMinicoyIslandUIFigure and hide until all components are created
            app.SampleScenarioMinicoyIslandUIFigure = uifigure('Visible', 'off');
            app.SampleScenarioMinicoyIslandUIFigure.Position = [100 100 629 466];
            app.SampleScenarioMinicoyIslandUIFigure.Name = 'Sample Scenario: Minicoy Island';

            % Create Image
            app.Image = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image.Position = [1 1 629 464];
            app.Image.ImageSource = 'minicoy_gmap.jpg';

            % Create Image2
            app.Image2 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image2.Position = [209 181 53 55];
            app.Image2.ImageSource = 'INS.jpg';

            % Create Image3
            app.Image3 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image3.Position = [273 56 65 40];
            app.Image3.ImageSource = 'LCV MK4.jpg';

            % Create Image4
            app.Image4 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image4.Position = [457 126 39 28];
            app.Image4.ImageSource = 'guldar.jpg';

            % Create Image5
            app.Image5 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image5.Position = [357 255 34 25];
            app.Image5.ImageSource = 'Airavat.jpg';

            % Create Image6
            app.Image6 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image6.Position = [495 181 48 43];
            app.Image6.ImageSource = 'AmphBde.jpg';

            % Create Image7
            app.Image7 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image7.Position = [424 350 46 27];
            app.Image7.ImageSource = 'SF.jpg';

            % Create Image8
            app.Image8 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image8.Position = [520 95 67 32];
            app.Image8.ImageSource = 'Marcos.jpg';

            % Create Image9
            app.Image9 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image9.Position = [457 190 64 37];
            app.Image9.ImageSource = 'C130a.jpg';

            % Create Image10
            app.Image10 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image10.Position = [507 114 60 53];
            app.Image10.ImageSource = 'C130b.jpg';

            % Create Image11
            app.Image11 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image11.Position = [469 279 63 34];
            app.Image11.ImageSource = 'C130c.jpg';

            % Create MessageEditFieldLabel
            app.MessageEditFieldLabel = uilabel(app.SampleScenarioMinicoyIslandUIFigure);
            app.MessageEditFieldLabel.HorizontalAlignment = 'right';
            app.MessageEditFieldLabel.Position = [156 14 54 22];
            app.MessageEditFieldLabel.Text = 'Message';

            % Create MessageEditField
            app.MessageEditField = uieditfield(app.SampleScenarioMinicoyIslandUIFigure, 'text');
            app.MessageEditField.Position = [225 14 353 22];

            % Create ProceedtoPortButton
            app.ProceedtoPortButton = uibutton(app.SampleScenarioMinicoyIslandUIFigure, 'push');
            app.ProceedtoPortButton.ButtonPushedFcn = createCallbackFcn(app, @ProceedtoPortButtonPushed, true);
            app.ProceedtoPortButton.Position = [4 435 93 22];
            app.ProceedtoPortButton.Text = 'Proceed to Port';

            % Create SecurePortButton
            app.SecurePortButton = uibutton(app.SampleScenarioMinicoyIslandUIFigure, 'push');
            app.SecurePortButton.ButtonPushedFcn = createCallbackFcn(app, @SecurePortButtonPushed, true);
            app.SecurePortButton.Position = [101 435 85 22];
            app.SecurePortButton.Text = 'Secure Port';

            % Create MoveSendThemsgtoLPDButton
            app.MoveSendThemsgtoLPDButton = uibutton(app.SampleScenarioMinicoyIslandUIFigure, 'push');
            app.MoveSendThemsgtoLPDButton.ButtonPushedFcn = createCallbackFcn(app, @MoveSendThemsgtoLPDButtonPushed, true);
            app.MoveSendThemsgtoLPDButton.Position = [188 435 177 22];
            app.MoveSendThemsgtoLPDButton.Text = 'Move & Send The msg to LPD';

            % Create SendthemsgtoMI17Button
            app.SendthemsgtoMI17Button = uibutton(app.SampleScenarioMinicoyIslandUIFigure, 'push');
            app.SendthemsgtoMI17Button.ButtonPushedFcn = createCallbackFcn(app, @SendthemsgtoMI17ButtonPushed, true);
            app.SendthemsgtoMI17Button.Position = [375 435 133 22];
            app.SendthemsgtoMI17Button.Text = 'Send the msg to MI17';

            % Create Image12
            app.Image12 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image12.Position = [82 181 35 55];
            app.Image12.ImageSource = 'air_strips.jpg';

            % Create Image13
            app.Image13 = uiimage(app.SampleScenarioMinicoyIslandUIFigure);
            app.Image13.Position = [88 205 24 19];
            app.Image13.ImageSource = 'Mi17H.jpg';

            % Create SecureAirStripeButton
            app.SecureAirStripeButton = uibutton(app.SampleScenarioMinicoyIslandUIFigure, 'push');
            app.SecureAirStripeButton.ButtonPushedFcn = createCallbackFcn(app, @SecureAirStripeButtonPushed, true);
            app.SecureAirStripeButton.Position = [520 435 106 22];
            app.SecureAirStripeButton.Text = 'Secure Air Stripe';

            % Show the figure after all components are created
            app.SampleScenarioMinicoyIslandUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = minicoy_island_scenario_exported(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.SampleScenarioMinicoyIslandUIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.SampleScenarioMinicoyIslandUIFigure)
        end
    end
end