classdef Combat_Potential_Forces_3p4_minicoy_island_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CombatPotentialComputationUIFigure  matlab.ui.Figure
        TerrainMenu                     matlab.ui.container.Menu
        MobilityEffectMenu              matlab.ui.container.Menu
        DefensePostureEffectMenu        matlab.ui.container.Menu
        WeatherMenu                     matlab.ui.container.Menu
        MobilityMenu                    matlab.ui.container.Menu
        AttackPostureMenu               matlab.ui.container.Menu
        ArtilleryMenu                   matlab.ui.container.Menu
        AirMenu                         matlab.ui.container.Menu
        TankMenu                        matlab.ui.container.Menu
        IntangibleFactorMenu            matlab.ui.container.Menu
        CombatEffectivenessMenu         matlab.ui.container.Menu
        LeadershipMenu                  matlab.ui.container.Menu
        TrainingExperiencesMenu         matlab.ui.container.Menu
        MoraleLogisticMenu              matlab.ui.container.Menu
        TimeMenu                        matlab.ui.container.Menu
        SpaceMenu                       matlab.ui.container.Menu
        MomentumMenu                    matlab.ui.container.Menu
        IntelligenceMenu                matlab.ui.container.Menu
        TechnologyMenu                  matlab.ui.container.Menu
        InitiativeMenu                  matlab.ui.container.Menu
        AirDominanceMenu                matlab.ui.container.Menu
        AirSuperiorityMenu              matlab.ui.container.Menu
        MobilityEffectMenu_2            matlab.ui.container.Menu
        ArtilleryEffectMenu             matlab.ui.container.Menu
        AirEffectivenessEffectMenu      matlab.ui.container.Menu
        VulnerabilityEffectMenu         matlab.ui.container.Menu
        AirEqualityMenu                 matlab.ui.container.Menu
        AirInferiorityMenu              matlab.ui.container.Menu
        MaritimeStrikeCapabilityMenu    matlab.ui.container.Menu
        QJMMenu                         matlab.ui.container.Menu
        NonMobileWeaponsMenu            matlab.ui.container.Menu
        MobileWeaponsMenu               matlab.ui.container.Menu
        CombatPowerMenu                 matlab.ui.container.Menu
        AirPowerMenu                    matlab.ui.container.Menu
        FighterMenu                     matlab.ui.container.Menu
        EscortMenu                      matlab.ui.container.Menu
        TransportACMenu                 matlab.ui.container.Menu
        HelicopterMenu                  matlab.ui.container.Menu
        LandPowerMenu                   matlab.ui.container.Menu
        SFMenu                          matlab.ui.container.Menu
        AmphibiousBrigadeMenu           matlab.ui.container.Menu
        NavalPowerMenu                  matlab.ui.container.Menu
        MaritimeFighterMenu             matlab.ui.container.Menu
        INSJALASWAMenu                  matlab.ui.container.Menu
        AiravatMenu                     matlab.ui.container.Menu
        GuldarMenu                      matlab.ui.container.Menu
        LCVMK4Menu                      matlab.ui.container.Menu
        MARCOSMenu                      matlab.ui.container.Menu
        CourseofActionMenu              matlab.ui.container.Menu
        CarrySFandMARCOSMenu            matlab.ui.container.Menu
        ConflictPointMenu               matlab.ui.container.Menu
        SecuringtheMinicoyPortfromANEbySFandMARCOSMenu  matlab.ui.container.Menu
        MovingtowardsAirstirpewhichis12kmawayMenu  matlab.ui.container.Menu
        CombattofreetheairstripebySFMARCOSAMPHForceMenu  matlab.ui.container.Menu
        RemovingtheAAgunMenu            matlab.ui.container.Menu
        SecuringthePortandAirstripeMenu  matlab.ui.container.Menu
        FreetheHostagesandkilltheANEfromGovtResidenceMenu  matlab.ui.container.Menu
        IntelligenceMenu_2              matlab.ui.container.Menu
        LocationofPortAirstripeMenu     matlab.ui.container.Menu
        LocationofAAgunsMenu            matlab.ui.container.Menu
        CoordinationMenu                matlab.ui.container.Menu
        ScenarioDescriptionMenu         matlab.ui.container.Menu
        ObjOwnForcesPresentSituationMenu  matlab.ui.container.Menu
        CoursesofActionMenu             matlab.ui.container.Menu
        MapMenu                         matlab.ui.container.Menu
        GridLayout                      matlab.ui.container.GridLayout
        LeftPanel                       matlab.ui.container.Panel
        REDDropDownLabel                matlab.ui.control.Label
        REDDropDown                     matlab.ui.control.DropDown
        AssualtRifleLabel               matlab.ui.control.Label
        Red_Assualt_rifle               matlab.ui.control.NumericEditField
        MachineGunsLabel                matlab.ui.control.Label
        Red_MG                          matlab.ui.control.NumericEditField
        PistolsLabel                    matlab.ui.control.Label
        Red_Pistol                      matlab.ui.control.NumericEditField
        ShotgunsLabel                   matlab.ui.control.Label
        Red_Shotguns                    matlab.ui.control.NumericEditField
        SnipperRiflesLabel              matlab.ui.control.Label
        Red_Snipper_rifle               matlab.ui.control.NumericEditField
        GrenadeLaunchersLabel           matlab.ui.control.Label
        Red_GL                          matlab.ui.control.NumericEditField
        RocketLauncherLabel             matlab.ui.control.Label
        Red_RL                          matlab.ui.control.NumericEditField
        HostagesLabel                   matlab.ui.control.Label
        Red_Hostages                    matlab.ui.control.NumericEditField
        TankLabel_2                     matlab.ui.control.Label
        Red_Tank                        matlab.ui.control.NumericEditField
        APCLabel_2                      matlab.ui.control.Label
        Red_APC                         matlab.ui.control.NumericEditField
        Red_Assualt_rifle_score         matlab.ui.control.NumericEditField
        Red_MG_score                    matlab.ui.control.NumericEditField
        Red_Pistol_score                matlab.ui.control.NumericEditField
        Red_Shotgun_score               matlab.ui.control.NumericEditField
        Red_Snipper_rifle_score         matlab.ui.control.NumericEditField
        Red_GL_score                    matlab.ui.control.NumericEditField
        Red_RL_score                    matlab.ui.control.NumericEditField
        Red_Hostages_score              matlab.ui.control.NumericEditField
        Red_FighterAC_score             matlab.ui.control.NumericEditField
        Red_EscortAC_score              matlab.ui.control.NumericEditField
        Red_Helicopter_score            matlab.ui.control.NumericEditField
        ArtilleryLabel_2                matlab.ui.control.Label
        Red_Artillery                   matlab.ui.control.NumericEditField
        TotalCombatPotentialLabel       matlab.ui.control.Label
        aa                              matlab.ui.control.NumericEditField
        COMPUTEButton                   matlab.ui.control.Button
        TerrainDropDownLabel            matlab.ui.control.Label
        TerrainDropDown                 matlab.ui.control.DropDown
        Red_Pers_score                  matlab.ui.control.NumericEditField
        PersLabel                       matlab.ui.control.Label
        Red_Pers                        matlab.ui.control.NumericEditField
        Image                           matlab.ui.control.Image
        PostureDropDownLabel            matlab.ui.control.Label
        PostureDropDown                 matlab.ui.control.DropDown
        AAGunsLabel                     matlab.ui.control.Label
        Red_AA                          matlab.ui.control.NumericEditField
        Red_AA_score                    matlab.ui.control.NumericEditField
        DropDown                        matlab.ui.control.DropDown
        QntLabel                        matlab.ui.control.Label
        CenterPanel                     matlab.ui.container.Panel
        BLUEDropDownLabel               matlab.ui.control.Label
        BLUEDropDown                    matlab.ui.control.DropDown
        AssualtRifleEditFieldLabel      matlab.ui.control.Label
        Blue_Assualt_rifle              matlab.ui.control.NumericEditField
        MachineGumsEditFieldLabel       matlab.ui.control.Label
        Blue_MG                         matlab.ui.control.NumericEditField
        PistolEditFieldLabel            matlab.ui.control.Label
        Blue_Pistol                     matlab.ui.control.NumericEditField
        ShotgunsEditFieldLabel          matlab.ui.control.Label
        Blue_shotguns                   matlab.ui.control.NumericEditField
        SnipperRifleEditFieldLabel      matlab.ui.control.Label
        Blue_snipper_rifle              matlab.ui.control.NumericEditField
        GrenadeLaunchersEditFieldLabel  matlab.ui.control.Label
        Blue_GL                         matlab.ui.control.NumericEditField
        TerrainDropDown_2Label          matlab.ui.control.Label
        TerrainDropDown_2               matlab.ui.control.DropDown
        Tank_blue_score                 matlab.ui.control.NumericEditField
        APC_blue_score                  matlab.ui.control.NumericEditField
        LR_blue_score                   matlab.ui.control.NumericEditField
        SR_blue_score                   matlab.ui.control.NumericEditField
        Mortar_blue_score               matlab.ui.control.NumericEditField
        Arty_blue_score                 matlab.ui.control.NumericEditField
        TotalCombatPotentialLabel_2     matlab.ui.control.Label
        COMPUTEButton_2                 matlab.ui.control.Button
        RocketLauncherEditFieldLabel    matlab.ui.control.Label
        Blue_RL                         matlab.ui.control.NumericEditField
        TankLabel                       matlab.ui.control.Label
        Blue_tank                       matlab.ui.control.NumericEditField
        APCLabel                        matlab.ui.control.Label
        Blue_APC                        matlab.ui.control.NumericEditField
        ArtilleryLabel                  matlab.ui.control.Label
        BLue_Artillery                  matlab.ui.control.NumericEditField
        LCVCEditFieldLabel              matlab.ui.control.Label
        Blue_LCVC                       matlab.ui.control.NumericEditField
        Helicopter_blue_score           matlab.ui.control.NumericEditField
        Fighter_blue_score              matlab.ui.control.NumericEditField
        GroundAttack_blue_score         matlab.ui.control.NumericEditField
        UAV_blue_score                  matlab.ui.control.NumericEditField
        Pers_blue_score                 matlab.ui.control.NumericEditField
        bb                              matlab.ui.control.NumericEditField
        blue_EqNComp_score              matlab.ui.control.NumericEditField
        PersLabel_2                     matlab.ui.control.Label
        Blue_Pers                       matlab.ui.control.NumericEditField
        Image2                          matlab.ui.control.Image
        PostureDropDown_2Label          matlab.ui.control.Label
        PostureDropDown_2               matlab.ui.control.DropDown
        DropDown_2                      matlab.ui.control.DropDown
        QntLabel_2                      matlab.ui.control.Label
        RightPanel                      matlab.ui.container.Panel
        Label                           matlab.ui.control.Label
        ForceRatioREDBLUEButton         matlab.ui.control.Button
        FR                              matlab.ui.control.NumericEditField
        ComputeAttritionRatesButton     matlab.ui.control.Button
        outputA                         matlab.ui.control.NumericEditField
        outputB                         matlab.ui.control.NumericEditField
        A                               matlab.ui.control.Label
        B                               matlab.ui.control.Label
        DefenderUIAxes                  matlab.ui.control.UIAxes
        AttackerUIAxes                  matlab.ui.control.UIAxes
        BattleTimetEditFieldLabel       matlab.ui.control.Label
        BattleTimetEditField            matlab.ui.control.NumericEditField
        RedLossEditFieldLabel           matlab.ui.control.Label
        Redloss                         matlab.ui.control.NumericEditField
        BlueLossEditFieldLabel          matlab.ui.control.Label
        Blueloss                        matlab.ui.control.NumericEditField
        Label_2                         matlab.ui.control.Label
        Label_3                         matlab.ui.control.Label
        AnalysisButton                  matlab.ui.control.Button
        MapButton                       matlab.ui.control.Button
        fig3UIAxes                      matlab.ui.control.UIAxes
        fig4UIAxes                      matlab.ui.control.UIAxes
        ABLabel                         matlab.ui.control.Label
        ABRatio                         matlab.ui.control.NumericEditField
    end

    % Properties that correspond to apps with auto-reflow
    properties (Access = private)
        onePanelWidth = 576;
        twoPanelWidth = 768;
    end

    
    properties (Access = private)
        CallingApp;
         DialogApp    ;    
         currentvalue;% Dialog box appLine 129: Argument 'app' is unused. Should this method be Static?
         force_strength;
         vulnerability;
         red_vulnerability_multiplier;
         red_force_strength_multiplier=1;
           blue_vulnerability_multiplier;
         blue_force_strength_multiplier=1;

%           CurrentSize = 35;           % Surface sample size
%         CurrentColormap = 'Parula'; % Colormap
      
    end
    
  methods (Access = public)
        
        function updatevalue(app,x)
%               app.ABRatio.Value=x;
%             app.FirstDialogEditField.Value=x;
%             app.OKButton.Enable='on'
            app.COMPUTEButton.Enable='on';
            app.aa.Value=x
        end
  end
    
    methods (Access = public)
        
        function  update_posture_factor_matrix(app,posture_factor)
         
           
            app.force_strength=double(posture_factor(:,2))
            app.vulnerability=double(posture_factor(:,3))
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, mainapp)
                app.CallingApp=mainapp;
        end

        % Value changed function: REDDropDown
        function REDDropDownValueChanged(app, event)
            value = app.REDDropDown.Value;
                
    
    
            if(strcmp(value,'ANE at Port'))
                app.Red_Assualt_rifle.Value=30;
                app.Red_MG.Value=30;
                app.Red_Pistol.Value=60;
                app.Red_Shotguns.Value=10;
                app.Red_Snipper_rifle.Value=2;
                app.Red_GL.Value=5;
                app.Red_RL.Value=5;
                app.Red_AA.Value=4;
                app.Red_Hostages.Value=0;
                app.Red_Tank.Value=0;
                app.Red_APC.Value=0;
                app.Red_Artillery.Value=0;
                app.Red_Pers.Value=60;
                app.TerrainDropDown.Value='Open'
                app.Image.ImageSource='ANEatPort.jpg';
             
            end
              if(strcmp(value,'ANE at Landing AirStrip'))
                app.Red_Assualt_rifle.Value=30;
                app.Red_MG.Value=30;
                app.Red_Pistol.Value=60;
                app.Red_Shotguns.Value=10;
                app.Red_Snipper_rifle.Value=2;
                app.Red_GL.Value=5;
                app.Red_RL.Value=5;
                app.Red_AA.Value=4;
                app.Red_Hostages.Value=0;
                app.Red_Tank.Value=0;
                app.Red_APC.Value=0;
                app.Red_Artillery.Value=0;
                app.Red_Pers.Value=60;
                app.TerrainDropDown.Value='Open'
                 app.Image.ImageSource='ANEatAirStripe.jpg';
              end
               if(strcmp(value,'ANE at AA gunbase'))
                app.Red_Assualt_rifle.Value=30;
                app.Red_MG.Value=30;
                app.Red_Pistol.Value=60;
                app.Red_Shotguns.Value=10;
                app.Red_Snipper_rifle.Value=0;
                app.Red_GL.Value=5;
                app.Red_RL.Value=5;
                app.Red_AA.Value=12;
                app.Red_Hostages.Value=0;
                app.Red_Tank.Value=0;
                app.Red_APC.Value=0;
                app.Red_Artillery.Value=0;
                app.Red_Pers.Value=60;
                app.TerrainDropDown.Value='Open'
                  app.Image.ImageSource='ANEatAA.jpg';
               end
               if(strcmp(value,'ANE at Govt Residence'))
                app.Red_Assualt_rifle.Value=60;
                app.Red_MG.Value=60;
                app.Red_Pistol.Value=120;
                app.Red_Shotguns.Value=10;
                app.Red_Snipper_rifle.Value=10;
                app.Red_GL.Value=10;
                app.Red_RL.Value=10;
                app.Red_AA.Value=12;
                app.Red_Hostages.Value=10000;
                app.Red_Tank.Value=0;
                app.Red_APC.Value=0;
                app.Red_Artillery.Value=0;
                app.Red_Pers.Value=120;
                app.TerrainDropDown.Value='Open'
                  app.Image.ImageSource='ANEatGovt.jpg';
               end

        end

        % Value changed function: TerrainDropDown
        function TerrainDropDownValueChanged(app, event)
            value = app.TerrainDropDown.Value;
            if(strcmp(value,'Open'))
                app.Red_Assualt_rifle.Value=app.Red_Assualt_rifle.Value;
                app.Red_Assualt_rifle.Value=app.Red_Assualt_rifle.Value;
                app.Red_MG.Value=app.Red_MG.Value;
                app.Red_Pistol.Value=app.Red_Pistol.Value;
                app.Red_Shotguns.Value=app.Red_Shotguns.Value;
                app.Red_Snipper_rifle.Value=app.Red_Snipper_rifle.Value;
                app.Red_GL.Value=app.Red_GL.Value;
                app.Red_RL.Value=app.Red_RL.Value;
                app.Red_Hostages.Value=app.Red_Hostages.Value;
                app.Red_Tank.Value=app.Red_Tank.Value;
                app.Red_APC.Value=app.Red_APC.Value;
                app.Red_Artillery.Value=app.Red_Artillery.Value;

            end
             if(strcmp(value,'Urban'))
                app.Red_Assualt_rifle.Value=app.Red_Assualt_rifle.Value*.75;
                app.Red_Assualt_rifle.Value=app.Red_Assualt_rifle.Value*.75;
                app.Red_MG.Value=app.Red_MG.Value*.75;
                app.Red_Pistol.Value=app.Red_Pistol.Value;
                app.Red_Shotguns.Value=app.Red_Shotguns.Value;
                app.Red_Snipper_rifle.Value=app.Red_Snipper_rifle.Value;
                app.Red_GL.Value=app.Red_GL.Value;
                app.Red_RL.Value=app.Red_RL.Value*.75;
                app.Red_Hostages.Value=app.Red_Hostages.Value;
                app.Red_Tank.Value=app.Red_Tank.Value;
                app.Red_APC.Value=app.Red_APC.Value;
                app.Red_Artillery.Value=app.Red_Artillery.Value;


             end
              if(strcmp(value,'Rough'))
                app.Red_Assualt_rifle.Value=app.Red_Assualt_rifle.Value*.5;
                app.Red_Assualt_rifle.Value=app.Red_Assualt_rifle.Value*.5;
                app.Red_MG.Value=app.Red_MG.Value*.5;
                app.Red_Pistol.Value=app.Red_Pistol.Value;
                app.Red_Shotguns.Value=app.Red_Shotguns.Value;
                app.Red_Snipper_rifle.Value=app.Red_Snipper_rifle.Value;
                app.Red_GL.Value=app.Red_GL.Value;
                app.Red_RL.Value=app.Red_RL.Value*.5;
                app.Red_Hostages.Value=app.Red_Hostages.Value;
                app.Red_Tank.Value=app.Red_Tank.Value;
                app.Red_APC.Value=app.Red_APC.Value;
                app.Red_Artillery.Value=app.Red_Artillery.Value;

                
              end
               if(strcmp(value,'Mountain'))
                app.Red_Assualt_rifle.Value=app.Red_Assualt_rifle.Value*.25;
                app.Red_Assualt_rifle.Value=app.Red_Assualt_rifle.Value*.25;
                app.Red_MG.Value=app.Red_MG.Value*.25;
                app.Red_Pistol.Value=app.Red_Pistol.Value;
                app.Red_Shotguns.Value=app.Red_Shotguns.Value;
                app.Red_Snipper_rifle.Value=app.Red_Snipper_rifle.Value;
                app.Red_GL.Value=app.Red_GL.Value;
                app.Red_RL.Value=app.Red_RL.Value*.25;
                app.Red_Hostages.Value=app.Red_Hostages.Value;
                app.Red_Tank.Value=app.Red_Tank.Value;
                app.Red_APC.Value=app.Red_APC.Value;
                app.Red_Artillery.Value=app.Red_Artillery.Value;

                

             end
        end

        % Value changed function: BLUEDropDown
        function BLUEDropDownValueChanged(app, event)
            value = app.BLUEDropDown.Value;
             if(strcmp(value,'Amphibious Troops-From INS'))
                app.Blue_Assualt_rifle.Value=10;
                app.Blue_MG.Value=50;
                app.Blue_Pistol.Value=50;
                app.Blue_shotguns.Value=0;
                app.Blue_snipper_rifle.Value=5;
                app.Blue_GL.Value=5;
                app.Blue_RL.Value=5;
                app.Blue_tank.Value=0;
                app.Blue_APC.Value=0;
                app.BLue_Artillery.Value=0;
                app.Blue_LCVC.Value=5;
                app.Blue_Pers.Value=50;
                app.TerrainDropDown_2.Value='Open'
                app.Image2.ImageSource='INS.jpg'
            end
            




              if(strcmp(value,'Amphibious Troops- From Mi17 Helicopter'))
                app.Blue_Assualt_rifle.Value=0;
                app.Blue_MG.Value=5;
                app.Blue_Pistol.Value=1000;
                app.Blue_shotguns.Value=1000;
                app.Blue_snipper_rifle.Value=1000;
                app.Blue_GL.Value=0;
                app.Blue_RL.Value=2;
                app.Blue_tank.Value=0;
                app.Blue_APC.Value=0;
                app.BLue_Artillery.Value=2;
                app.Blue_LCVC.Value=15500;
                app.Blue_Pers.Value=0;
                app.TerrainDropDown_2.Value='Open'
                app.Image2.ImageSource='Airavat.jpg'
              end
              

               if(strcmp(value,'Amphibious Brigade'))
                app.Blue_Assualt_rifle.Value=0;
                app.Blue_MG.Value=5;
                app.Blue_Pistol.Value=600;
                app.Blue_shotguns.Value=600;
                app.Blue_snipper_rifle.Value=20;
                app.Blue_GL.Value=10;
                app.Blue_RL.Value=10;
                app.Blue_tank.Value=150;
                app.Blue_APC.Value=50;
                app.BLue_Artillery.Value=0;
                app.Blue_LCVC.Value=10;
                app.Blue_Pers.Value=600;
                app.TerrainDropDown_2.Value='Open'
                app.Image2.ImageSource='T72bgd.jpg'
               end
               

              if(strcmp(value,'SF & MARCOS'))
                app.Blue_Assualt_rifle.Value=100;
                app.Blue_MG.Value=100;
                app.Blue_Pistol.Value=100;
                app.Blue_shotguns.Value=5;
                app.Blue_snipper_rifle.Value=5;
                app.Blue_GL.Value=5;
                app.Blue_RL.Value=5;
                app.Blue_tank.Value=0;
                app.Blue_APC.Value=0;
                app.BLue_Artillery.Value=0;
                app.Blue_LCVC.Value=0;
                app.Blue_Pers.Value=100;
                app.TerrainDropDown_2.Value='Open'
                 app.Image2.ImageSource='SF.jpg'
            end
          
     
        end

        % Value changed function: TerrainDropDown_2
        function TerrainDropDown_2ValueChanged(app, event)
            value = app.TerrainDropDown_2.Value;
            if(strcmp(value,'Open'))
                app.Blue_Assualt_rifle.Value=app.Blue_Assualt_rifle.Value;
                app.Blue_MG.Value=app.Blue_MG.Value;
                app.Blue_Pistol.Value=app.Blue_Pistol.Value;
                app.Blue_shotguns.Value=app.Blue_shotguns.Value;
                app.Blue_snipper_rifle.Value=app.Blue_snipper_rifle.Value;
                app.Blue_GL.Value=app.Blue_GL.Value;
                app.Blue_RL.Value=app.Blue_RL.Value;
                app.Blue_tank.Value=app.Blue_tank.Value;
                app.Blue_APC.Value=app.Blue_APC.Value;
                app.BLue_Artillery.Value=app.BLue_Artillery.Value;
                app.Blue_LCVC.Value=app.Blue_LCVC.Value;

            end
             if(strcmp(value,'Urban'))
               app.Blue_Assualt_rifle.Value=app.Blue_Assualt_rifle.Value*.75;
                app.Blue_MG.Value=app.Blue_MG.Value*.75;
                app.Blue_Pistol.Value=app.Blue_Pistol.Value*.75;
                app.Blue_shotguns.Value=app.Blue_shotguns.Value;
                app.Blue_snipper_rifle.Value=app.Blue_snipper_rifle.Value;
                app.Blue_GL.Value=app.Blue_GL.Value;
                app.Blue_RL.Value=app.Blue_RL.Value*.75;
                app.Blue_tank.Value=app.Blue_tank.Value;
                app.Blue_APC.Value=app.Blue_APC.Value;
                app.BLue_Artillery.Value=app.BLue_Artillery.Value;
                app.Blue_LCVC.Value=app.Blue_LCVC.Value;


             end
              if(strcmp(value,'Rough'))
                 app.Blue_Assualt_rifle.Value=app.Blue_Assualt_rifle.Value*.5;
                app.Blue_MG.Value=app.Blue_MG.Value*.5;
                app.Blue_Pistol.Value=app.Blue_Pistol.Value*.5;
                app.Blue_shotguns.Value=app.Blue_shotguns.Value;
                app.Blue_snipper_rifle.Value=app.Blue_snipper_rifle.Value;
                app.Blue_GL.Value=app.Blue_GL.Value;
                app.Blue_RL.Value=app.Blue_RL.Value*.5;
                app.Blue_tank.Value=app.Blue_tank.Value;
                app.Blue_APC.Value=app.Blue_APC.Value;
                app.BLue_Artillery.Value=app.BLue_Artillery.Value;
                app.Blue_LCVC.Value=app.Blue_LCVC.Value;

                
              end
               if(strcmp(value,'Mountain'))
                app.Blue_Assualt_rifle.Value=app.Blue_Assualt_rifle.Value*.25;
                app.Blue_MG.Value=app.Blue_MG.Value*.25;
                app.Blue_Pistol.Value=app.Blue_Pistol.Value*.25;
                app.Blue_shotguns.Value=app.Blue_shotguns.Value;
                app.Blue_snipper_rifle.Value=app.Blue_snipper_rifle.Value;
                app.Blue_GL.Value=app.Blue_GL.Value;
                app.Blue_RL.Value=app.Blue_RL.Value*.25;
                app.Blue_tank.Value=app.Blue_tank.Value;
                app.Blue_APC.Value=app.Blue_APC.Value;
                app.BLue_Artillery.Value=app.BLue_Artillery.Value;
                app.Blue_LCVC.Value=app.Blue_LCVC.Value;


             end
        end

        % Callback function
        function RedToatlCombatScoreEditFieldValueChanged(app, event)
            value = app.RedToatlCombatScoreEditField.Value;
             
        end

        % Callback function
        function ComputeButtonPushed(app, event)
           
        end

        % Callback function
        function COMPUTEButtonPushed(app, event)
                   
        end

        % Changes arrangement of the app based on UIFigure width
        function updateAppLayout(app, event)
            currentFigureWidth = app.CombatPotentialComputationUIFigure.Position(3);
            if(currentFigureWidth <= app.onePanelWidth)
                % Change to a 3x1 grid
                app.GridLayout.RowHeight = {727, 727, 727};
                app.GridLayout.ColumnWidth = {'1x'};
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = 1;
                app.LeftPanel.Layout.Row = 2;
                app.LeftPanel.Layout.Column = 1;
                app.RightPanel.Layout.Row = 3;
                app.RightPanel.Layout.Column = 1;
            elseif (currentFigureWidth > app.onePanelWidth && currentFigureWidth <= app.twoPanelWidth)
                % Change to a 2x2 grid
                app.GridLayout.RowHeight = {727, 727};
                app.GridLayout.ColumnWidth = {'1x', '1x'};
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = [1,2];
                app.LeftPanel.Layout.Row = 2;
                app.LeftPanel.Layout.Column = 1;
                app.RightPanel.Layout.Row = 2;
                app.RightPanel.Layout.Column = 2;
            else
                % Change to a 1x3 grid
                app.GridLayout.RowHeight = {'1x'};
                app.GridLayout.ColumnWidth = {309, '1x', 556};
                app.LeftPanel.Layout.Row = 1;
                app.LeftPanel.Layout.Column = 1;
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = 2;
                app.RightPanel.Layout.Row = 1;
                app.RightPanel.Layout.Column = 3;
            end
        end

        % Button pushed function: COMPUTEButton_2
        function COMPUTEButton_2Pushed(app, event)
            app.bb.Value=sum(app.Blue_Assualt_rifle.Value*app.Tank_blue_score.Value+...
                                                           app.Blue_MG.Value*app.APC_blue_score.Value+...
                                                           app.Blue_Pistol.Value*app.LR_blue_score.Value+...
                                                           app.Blue_shotguns.Value*app.SR_blue_score.Value+...
                                                           app.Blue_snipper_rifle.Value*app.Mortar_blue_score.Value+...
                                                           app.Blue_GL.Value*app.Arty_blue_score.Value+...
                                                           app.Blue_RL.Value*app.Helicopter_blue_score.Value+...
                                                           app.Blue_tank.Value*app.Fighter_blue_score.Value+...
                                                           app.Blue_APC.Value*app.GroundAttack_blue_score.Value+...
                                                           app.BLue_Artillery.Value*app.UAV_blue_score.Value+...
                                                           app.Blue_LCVC.Value*app.Pers_blue_score.Value+...
                                                           app.Blue_Pers.Value*app.blue_EqNComp_score.Value)
                         app.bb.Value=app.bb.Value*app.blue_force_strength_multiplier;                              
        end

        % Button pushed function: COMPUTEButton
        function COMPUTEButtonPushed2(app, event)
            app.aa.Value=sum(app.Red_Assualt_rifle.Value*app.Red_Assualt_rifle_score.Value+...
                                                           app.Red_MG.Value*app.Red_MG_score.Value+...
                                                           app.Red_Pistol.Value*app.Red_Pistol_score.Value+...
                                                           app.Red_Shotguns.Value*app.Red_Shotgun_score.Value+...
                                                           app.Red_Snipper_rifle.Value*app.Red_Snipper_rifle_score.Value+...
                                                           app.Red_GL.Value*app.Red_GL_score.Value+...
                                                           app.Red_RL.Value*app.Red_RL_score.Value+...
                                                           app.Red_Hostages.Value*app.Red_Hostages_score.Value+...
                                                           app.Red_Tank.Value*app.Red_FighterAC_score.Value+...
                                                           app.Red_APC.Value*app.Red_EscortAC_score.Value+...
                                                           app.Red_Artillery.Value*app.Red_Helicopter_score.Value+...
                                                           app.Red_Pers.Value*app.Red_Pers_score.Value)
            app.aa.Value=app.aa.Value*app.red_force_strength_multiplier;
        end

        % Button pushed function: ForceRatioREDBLUEButton
        function ForceRatioREDBLUEButtonPushed(app, event)
            app.FR.Value=app.aa.Value/app.bb.Value;
        end

        % Button pushed function: ComputeAttritionRatesButton
        function ComputeAttritionRatesButtonPushed(app, event)
            
            red_loss=app.Redloss.Value;
            blue_loss=app.Blueloss.Value; 
            x0=app.aa.Value;
            
%             xt=red_loss;
%             yt=blue_loss;
            if(red_loss<100)
              xt=x0*(1-(red_loss/100));
            else
              xt=x0*(.99999);
            end
%             
            y0=app.bb.Value;
            if(blue_loss<100)
                yt=y0*(1-(blue_loss/100));
            else
                yt=y0*(.999999);
            end
            
            
            
            F=(xt*sqrt(y0^2-yt^2)+yt*sqrt(x0^2-xt^2))/(x0*sqrt(y0^2-yt^2)+y0*sqrt(x0^2-xt^2));
            t=app.BattleTimetEditField.Value;

            app.outputA.Value=((sqrt(x0^2-xt^2))/(t*sqrt(y0^2-yt^2)))*log(F);
            app.outputB.Value=((sqrt(y0^2-yt^2))/(t*sqrt(x0^2-xt^2)))*log(F);
            A=app.outputA.Value;
            B=app.outputB.Value;
          app.ABRatio.Value=A/B;

xx=[];
yy=[];
FR=[];
count=0;
for i=1:.5:t
    x=x0*cosh(sqrt(A*B)*i)-y0*sqrt(A/B)*sinh(sqrt(A*B)*i);

    
    xx=[xx;x];
    y=y0*cosh(sqrt(A*B)*i)-x0*sqrt(B/A)*sinh(sqrt(A*B)*i);
    yy=[yy;y];
 plot(app.DefenderUIAxes,(1:.5:i)',xx,'r',(1:.5:i)',yy,'b')
  FR=[FR;x/y];
  count=count+1;
 
    if(FR(1)>FR(count))
               plot(app.AttackerUIAxes,(1:.5:i)',FR,'b')
                legend(app.AttackerUIAxes,{'Blue Wining'},'Location','Best')
            elseif(FR(1)==FR(count))
               plot(app.AttackerUIAxes,(1:.5:i)',FR,'g')
               legend(app.AttackerUIAxes,{'Draw'},'Location','Best')
            else
                plot(app.AttackerUIAxes,(1:.5:i)',FR,'r')
                legend(app.AttackerUIAxes,{'Red Wining'},'Location','Best')
            end
 pause(.1)

   
    
    
end
  
xx
yy
FR
% xx(1)=0;
for i=2:1:size(xx)
    cas_x(i)=xx(i-1)-xx(i);
    cas_y(i)=yy(i-1)-yy(i);
end
% cas'
temp=[xx,cas_x',yy,cas_y',FR]
%  plot(app.DefenderUIAxes,(1:.5:t)',xx,'r',(1:.5:t)',yy,'b')
 
 
 
%  legend(app.DefenderUIAxes,{'Blue','Red'},'Location','Best')
%             xlim(app.DefenderUIAxes,[1 t]); 
%             if(FR(1)>FR(end))
%                plot(app.AttackerUIAxes,(1:.5:t)',FR,'b')
%                 legend(app.AttackerUIAxes,{'Blue Wining'},'Location','Best')
%             elseif(FR(1)==FR(end))
%                plot(app.AttackerUIAxes,(1:.5:t)',FR,'g')
%                legend(app.AttackerUIAxes,{'Draw'},'Location','Best')
%             else
%                 plot(app.AttackerUIAxes,(1:.5:t)',FR,'r')
%                 legend(app.AttackerUIAxes,{'Red Wining'},'Location','Best')
%             end
%     legend(app.AttackerUIAxes,{'Attacker'},'Location','Best')
%             xlim(app.DefenderUIAxes,[1 t]); 
            
x=temp(:,1:4);
B=x(:,1);
dB=x(:,2);
R=x(:,3);
dR=x(:,4);
a=-15;
b=-15;
[P Q]=meshgrid(a:.099:15,b:.099:15);
[ka kb]=size(P);

 SSR_est=zeros(ka,kb);
 temp=zeros(ka,kb);
d_est=1;
 for k1=1:1:ka
     for l1=1:1:kb
         
        p=(a+.1*(k1-1));
        q=(b+.1*(l1-1));
       
 a_est=sum(dB)./sum((R.^p).*(B.^q));
        a_est=mean(a_est);
        
        b_est=sum(dB)./sum((R.^q).*(B.^p));
        b_est=mean(b_est);
        
            temp2=0; 
            temp1=0;
        for i=1:1:size(x)
            
            temp1=(dB(i)-a_est*(R(i)^p)*(B(i)^q))^2+(dR(i)-b_est*(1/d_est)*(B(i)^p)*(R(i).^q))^2 ;
           
          temp2=temp2+temp1;
        end
        SSR_est(k1,l1)=temp2;
     end
 end

mesh(app.fig4UIAxes,P,Q,SSR_est);

% figure,[C,h]=contourf(app.fig3UIAxes,Q,SSR_est);
contour(app.fig3UIAxes,P,Q,SSR_est);

% text_handle = clabel(C,h); 
         
        end

        % Close request function: CombatPotentialComputationUIFigure
        function CombatPotentialComputationUIFigureCloseRequest(app, event)
            delete(app)
            
        end

        % Button pushed function: AnalysisButton
        function AnalysisButtonPushed(app, event)
%          app.AnalysisButton.Enable = 'off'; 
         blEq=sum(app.Blue_Assualt_rifle.Value*app.Tank_blue_score.Value+...
                                                           app.Blue_MG.Value*app.APC_blue_score.Value+...
                                                           app.Blue_Pistol.Value*app.LR_blue_score.Value+...
                                                           app.Blue_shotguns.Value*app.SR_blue_score.Value+...
                                                           app.Blue_snipper_rifle.Value*app.Mortar_blue_score.Value+...
                                                           app.Blue_GL.Value*app.Arty_blue_score.Value+...
                                                           app.Blue_LCVC.Value*app.Pers_blue_score.Value)...
                                                           /app.Tank_blue_score.Value;
        baEq=sum(app.Blue_RL.Value*app.Helicopter_blue_score.Value+...
                                                           app.Blue_tank.Value*app.Fighter_blue_score.Value+...
                                                           app.Blue_APC.Value*app.GroundAttack_blue_score.Value+...
                                                           app.BLue_Artillery.Value*app.UAV_blue_score.Value)...
                                                           /app.Fighter_blue_score.Value;
           bNEq=app.Blue_Pers.Value*app.blue_EqNComp_score.Value ;                                      
           bpers= app.Blue_LCVC.Value*app.Pers_blue_score.Value;
          
           
           rlEq=sum(app.Red_Assualt_rifle.Value*app.Red_Assualt_rifle_score.Value+...
                                                           app.Red_MG.Value*app.Red_MG_score.Value+...
                                                           app.Red_Pistol.Value*app.Red_Pistol_score.Value+...
                                                           app.Red_Shotguns.Value*app.Red_Shotgun_score.Value+...
                                                           app.Red_Snipper_rifle.Value*app.Red_Snipper_rifle_score.Value+...
                                                           app.Red_GL.Value*app.Red_GL_score.Value+...
                                                           app.Red_Artillery.Value*app.Red_Helicopter_score.Value)...
                                                           /app.Red_Assualt_rifle_score.Value
            raEq=sum(app.Red_RL.Value*app.Red_RL_score.Value+...
                                                           app.Red_Hostages.Value*app.Red_Hostages_score.Value+...
                                                           app.Red_Tank.Value*app.Red_FighterAC_score.Value+...
                                                           app.Red_APC.Value*app.Red_EscortAC_score.Value)...
                                                           /app.Red_RL_score.Value
           rNEq=app.Red_Pers.Value*app.Red_Pers_score.Value                                      
           rpers= app.Red_Artillery.Value*app.Red_Helicopter_score.Value;
          
           
           
           
            app.DialogApp = Variable_resolution_model4(app,app.aa.Value,app.Redloss.Value,app.bb.Value,app.Blueloss.Value,app.BattleTimetEditField.Value,baEq,blEq,bNEq,raEq,rlEq,rNEq);
%             app.DialogApp = Variable_resolution_model4(app,app.aa.Value,app.Redloss.Value,app.bb.Value,app.Blueloss.Value,app.BattleTimetEditField.Value,10,20,30);
        end

        % Button pushed function: MapButton
        function MapButtonPushed(app, event)
            app.DialogApp=minicoy_island_scenario(app)
%            if(strcmp(app.PostureDropDown.Value,"Attack") && ~strcmp(app.PostureDropDown_2.Value,"Attack"))
%             if(strcmp(app.REDDropDown.Value,'6th Mechanized Infantry Division'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map2(app,'MIDiv.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map2(app,'MIDiv.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map2(app,'MIDiv.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map2(app,'MIDiv.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%                   
%                elseif(strcmp(app.REDDropDown.Value,'6th Armour Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map2(app,'RedArmourRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map2(app,'RedArmourRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map2(app,'RedArmourRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map2(app,'RedArmourRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end  
%                     
%             elseif(strcmp(app.REDDropDown.Value,'17th Infantry Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map2(app,'17InfRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map2(app,'17InfRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map2(app,'17InfRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map2(app,'17InfRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%             elseif(strcmp(app.REDDropDown.Value,'18th Artillery Regiment'))
%                 if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map2(app,'18ArtyRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map2(app,'18ArtyRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map2(app,'18ArtyRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map2(app,'18ArtyRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                 end
%             elseif(strcmp(app.REDDropDown.Value,'Air Defense Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map2(app,'ADRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map2(app,'ADRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map2(app,'ADRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map2(app,'ADRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%             else
%                 app.DialogApp=scenario_map1(); 
%             end
%           elseif(~strcmp(app.PostureDropDown.Value,"Attack") && strcmp(app.PostureDropDown_2.Value,"Attack"))
%                if(strcmp(app.REDDropDown.Value,'6th Mechanized Infantry Division'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map3(app,'MIDiv.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map3(app,'MIDiv.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map3(app,'MIDiv.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map3(app,'MIDiv.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%                   
%                elseif(strcmp(app.REDDropDown.Value,'6th Armour Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map3(app,'RedArmourRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map3(app,'RedArmourRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map3(app,'RedArmourRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map3(app,'RedArmourRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end  
%                     
%             elseif(strcmp(app.REDDropDown.Value,'17th Infantry Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map3(app,'17InfRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map3(app,'17InfRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map3(app,'17InfRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map3(app,'17InfRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%             elseif(strcmp(app.REDDropDown.Value,'18th Artillery Regiment'))
%                 if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map3(app,'18ArtyRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map3(app,'18ArtyRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map3(app,'18ArtyRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map3(app,'18ArtyRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                 end
%             elseif(strcmp(app.REDDropDown.Value,'Air Defense Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map3(app,'ADRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map3(app,'ADRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map3(app,'ADRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map3(app,'ADRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%             else
%                 app.DialogApp=scenario_map1(); 
%                end
%           elseif(~strcmp(app.PostureDropDown.Value,"Attack") &&  ~strcmp(app.PostureDropDown_2.Value,"Attack"))
%               if(strcmp(app.REDDropDown.Value,'6th Mechanized Infantry Division'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map4(app,'MIDiv.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map4(app,'MIDiv.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map4(app,'MIDiv.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map4(app,'MIDiv.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%                   
%                elseif(strcmp(app.REDDropDown.Value,'6th Armour Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map4(app,'RedArmourRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map4(app,'RedArmourRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map4(app,'RedArmourRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map4(app,'RedArmourRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end  
%                     
%             elseif(strcmp(app.REDDropDown.Value,'17th Infantry Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map4(app,'17InfRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map4(app,'17InfRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map4(app,'17InfRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map4(app,'17InfRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%             elseif(strcmp(app.REDDropDown.Value,'18th Artillery Regiment'))
%                 if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map4(app,'18ArtyRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map4(app,'18ArtyRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map4(app,'18ArtyRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map4(app,'18ArtyRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                 end
%             elseif(strcmp(app.REDDropDown.Value,'Air Defense Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map4(app,'ADRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map4(app,'ADRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map4(app,'ADRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map4(app,'ADRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%             else
%                 app.DialogApp=scenario_map1(); 
%               end
%           elseif(strcmp(app.PostureDropDown.Value,"Attack") &&  strcmp(app.PostureDropDown_2.Value,"Attack"))
%               if(strcmp(app.REDDropDown.Value,'6th Mechanized Infantry Division'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map5(app,'MIDiv.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map5(app,'MIDiv.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map5(app,'MIDiv.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map5(app,'MIDiv.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%                   
%                elseif(strcmp(app.REDDropDown.Value,'6th Armour Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map5(app,'RedArmourRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map5(app,'RedArmourRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map5(app,'RedArmourRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map5(app,'RedArmourRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end  
%                     
%             elseif(strcmp(app.REDDropDown.Value,'17th Infantry Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map5(app,'17InfRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map5(app,'17InfRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map5(app,'17InfRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map5(app,'17InfRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%             elseif(strcmp(app.REDDropDown.Value,'18th Artillery Regiment'))
%                 if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map5(app,'18ArtyRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map5(app,'18ArtyRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map5(app,'18ArtyRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map5(app,'18ArtyRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                 end
%             elseif(strcmp(app.REDDropDown.Value,'Air Defense Regiment'))
%                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
%                     app.DialogApp=scenario_map5(app,'ADRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
%                     app.DialogApp=scenario_map5(app,'ADRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
%                elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
%                     app.DialogApp=scenario_map5(app,'ADRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
%                     app.DialogApp=scenario_map5(app,'ADRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
%                else
%                      app.DialogApp=scenario_map1();    
%                end
%             else
%                 app.DialogApp=scenario_map1(); 
%             end
%           end
        end

        % Menu selected function: ArtilleryMenu
        function ArtilleryMenuSelected(app, event)
           app.DialogApp=weather_effect(app)
        
        end

        % Value changed function: PostureDropDown
        function PostureDropDownValueChanged(app, event)
%             value = app.PostureDropDown.Value;
            u=app.force_strength;
            v=app.vulnerability  ;          
            if(strcmp(app.PostureDropDown.Value,"Attack"))
                app.red_force_strength_multiplier=u(1);
                app.red_vulnerability_multiplier=v(1);
            elseif(strcmp(app.PostureDropDown.Value,"Defence (Hasty)"))
                 app.red_force_strength_multiplier=u(2);
                 app.red_vulnerability_multiplier=v(2);
            elseif(strcmp(app.PostureDropDown.Value,"Defence (Prepared)"))
                 app.red_force_strength_multiplier=u(3);
                 app.red_vulnerability_multiplier=v(3);
            elseif(strcmp(app.PostureDropDown.Value,"Defence (Fortified)"))
                 app.red_force_strength_multiplier=u(4);
                 app.red_vulnerability_multiplier=v(4);
            elseif(strcmp(app.PostureDropDown.Value,"Withdrawal"))
                 app.red_force_strength_multiplier=u(5);
                 app.red_vulnerability_multiplier=v(5);
            elseif(strcmp(app.PostureDropDown.Value,"Delay"))
                 app.red_force_strength_multiplier=u(6);
                 app.red_vulnerability_multiplier=v(6);
            end
       
        end

        % Value changed function: PostureDropDown_2
        function PostureDropDown_2ValueChanged(app, event)
            value = app.PostureDropDown_2.Value;
  u=app.force_strength;
            v=app.vulnerability  ;          
            if(strcmp(app.PostureDropDown_2.Value,"Attack"))
                app.blue_force_strength_multiplier=u(1);
                app.blue_vulnerability_multiplier=v(1);
            elseif(strcmp(app.PostureDropDown_2.Value,"Defence (Hasty)"))
                 app.blue_force_strength_multiplier=u(2);
                 app.blue_vulnerability_multiplier=v(2);
            elseif(strcmp(app.PostureDropDown_2.Value,"Defence (Prepared)"))
                 app.blue_force_strength_multiplier=u(3);
                 app.blue_vulnerability_multiplier=v(3);
            elseif(strcmp(app.PostureDropDown_2.Value,"Defence (Fortified)"))
                 app.blue_force_strength_multiplier=u(4);
                 app.blue_vulnerability_multiplier=v(4);
            elseif(strcmp(app.PostureDropDown_2.Value,"Withdrawal"))
                 app.blue_force_strength_multiplier=u(5);
                 app.blue_vulnerability_multiplier=v(5);
            elseif(strcmp(app.PostureDropDown_2.Value,"Delay"))
                 app.blue_force_strength_multiplier=u(6);
                 app.blue_vulnerability_multiplier=v(6);
            end
       
        end

        % Menu selected function: CarrySFandMARCOSMenu
        function CarrySFandMARCOSMenuSelected(app, event)
            app.DialogApp=COA1_minicoy(app)
        end

        % Menu selected function: MobilityEffectMenu
        function MobilityEffectMenuSelected(app, event)
             app.DialogApp=terrain_effect_on_mbility(app);
        end

        % Menu selected function: DefensePostureEffectMenu
        function DefensePostureEffectMenuSelected(app, event)
             app.DialogApp=terrain_effect_on_defense_posture(app);
        end

        % Menu selected function: MobilityMenu
        function MobilityMenuSelected(app, event)
            app.DialogApp=weather_effect(app);
        end

        % Menu selected function: AttackPostureMenu
        function AttackPostureMenuSelected(app, event)
            app.DialogApp=weather_effect(app);
        end

        % Menu selected function: AirMenu
        function AirMenuSelected(app, event)
            app.DialogApp=weather_effect(app);
        end

        % Menu selected function: TankMenu
        function TankMenuSelected(app, event)
            app.DialogApp=weather_effect(app);
        end

        % Menu selected function: NonMobileWeaponsMenu
        function NonMobileWeaponsMenuSelected(app, event)
             app.DialogApp=QJM_nonmobile(app);
        end

        % Menu selected function: MobileWeaponsMenu
        function MobileWeaponsMenuSelected(app, event)
            app.DialogApp=QJM_mobile(app);
        end

        % Menu selected function: MobilityEffectMenu_2
        function MobilityEffectMenu_2Selected(app, event)
             app.DialogApp=AirSupMobility(app);
        end

        % Menu selected function: ArtilleryEffectMenu
        function ArtilleryEffectMenuSelected(app, event)
             app.DialogApp=AirSupArtillery(app);
        end

        % Menu selected function: ObjOwnForcesPresentSituationMenu
        function ObjOwnForcesPresentSituationMenuSelected(app, event)
            app.DialogApp=minicoy_obj(app);
        end

        % Menu selected function: CoursesofActionMenu
        function CoursesofActionMenuSelected(app, event)
            app.DialogApp=minicoy_COA(app);
        end

        % Menu selected function: MapMenu
        function MapMenuSelected(app, event)
            app.DialogApp=minicoy_island_scenario_description(app)
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create CombatPotentialComputationUIFigure and hide until all components are created
            app.CombatPotentialComputationUIFigure = uifigure('Visible', 'off');
            app.CombatPotentialComputationUIFigure.AutoResizeChildren = 'off';
            app.CombatPotentialComputationUIFigure.Position = [100 100 1159 727];
            app.CombatPotentialComputationUIFigure.Name = 'Combat Potential Computation';
            app.CombatPotentialComputationUIFigure.CloseRequestFcn = createCallbackFcn(app, @CombatPotentialComputationUIFigureCloseRequest, true);
            app.CombatPotentialComputationUIFigure.SizeChangedFcn = createCallbackFcn(app, @updateAppLayout, true);

            % Create TerrainMenu
            app.TerrainMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.TerrainMenu.ForegroundColor = [0 0 1];
            app.TerrainMenu.Text = 'Terrain';

            % Create MobilityEffectMenu
            app.MobilityEffectMenu = uimenu(app.TerrainMenu);
            app.MobilityEffectMenu.MenuSelectedFcn = createCallbackFcn(app, @MobilityEffectMenuSelected, true);
            app.MobilityEffectMenu.Text = 'Mobility Effect';

            % Create DefensePostureEffectMenu
            app.DefensePostureEffectMenu = uimenu(app.TerrainMenu);
            app.DefensePostureEffectMenu.MenuSelectedFcn = createCallbackFcn(app, @DefensePostureEffectMenuSelected, true);
            app.DefensePostureEffectMenu.Text = 'Defense Posture Effect';

            % Create WeatherMenu
            app.WeatherMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.WeatherMenu.ForegroundColor = [1 0 1];
            app.WeatherMenu.Text = 'Weather';

            % Create MobilityMenu
            app.MobilityMenu = uimenu(app.WeatherMenu);
            app.MobilityMenu.MenuSelectedFcn = createCallbackFcn(app, @MobilityMenuSelected, true);
            app.MobilityMenu.Text = 'Mobility';

            % Create AttackPostureMenu
            app.AttackPostureMenu = uimenu(app.WeatherMenu);
            app.AttackPostureMenu.MenuSelectedFcn = createCallbackFcn(app, @AttackPostureMenuSelected, true);
            app.AttackPostureMenu.Text = 'Attack Posture';

            % Create ArtilleryMenu
            app.ArtilleryMenu = uimenu(app.WeatherMenu);
            app.ArtilleryMenu.MenuSelectedFcn = createCallbackFcn(app, @ArtilleryMenuSelected, true);
            app.ArtilleryMenu.Text = 'Artillery';

            % Create AirMenu
            app.AirMenu = uimenu(app.WeatherMenu);
            app.AirMenu.MenuSelectedFcn = createCallbackFcn(app, @AirMenuSelected, true);
            app.AirMenu.Text = 'Air';

            % Create TankMenu
            app.TankMenu = uimenu(app.WeatherMenu);
            app.TankMenu.MenuSelectedFcn = createCallbackFcn(app, @TankMenuSelected, true);
            app.TankMenu.Text = 'Tank';

            % Create IntangibleFactorMenu
            app.IntangibleFactorMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.IntangibleFactorMenu.ForegroundColor = [0 1 0];
            app.IntangibleFactorMenu.Text = 'Intangible Factor';

            % Create CombatEffectivenessMenu
            app.CombatEffectivenessMenu = uimenu(app.IntangibleFactorMenu);
            app.CombatEffectivenessMenu.Text = 'Combat Effectiveness';

            % Create LeadershipMenu
            app.LeadershipMenu = uimenu(app.CombatEffectivenessMenu);
            app.LeadershipMenu.Text = 'Leadership';

            % Create TrainingExperiencesMenu
            app.TrainingExperiencesMenu = uimenu(app.CombatEffectivenessMenu);
            app.TrainingExperiencesMenu.Text = 'Training Experiences';

            % Create MoraleLogisticMenu
            app.MoraleLogisticMenu = uimenu(app.CombatEffectivenessMenu);
            app.MoraleLogisticMenu.Text = 'Morale Logistic';

            % Create TimeMenu
            app.TimeMenu = uimenu(app.CombatEffectivenessMenu);
            app.TimeMenu.Text = 'Time';

            % Create SpaceMenu
            app.SpaceMenu = uimenu(app.CombatEffectivenessMenu);
            app.SpaceMenu.Text = 'Space';

            % Create MomentumMenu
            app.MomentumMenu = uimenu(app.CombatEffectivenessMenu);
            app.MomentumMenu.Text = 'Momentum';

            % Create IntelligenceMenu
            app.IntelligenceMenu = uimenu(app.CombatEffectivenessMenu);
            app.IntelligenceMenu.Text = 'Intelligence';

            % Create TechnologyMenu
            app.TechnologyMenu = uimenu(app.CombatEffectivenessMenu);
            app.TechnologyMenu.Text = 'Technology';

            % Create InitiativeMenu
            app.InitiativeMenu = uimenu(app.CombatEffectivenessMenu);
            app.InitiativeMenu.Text = 'Initiative';

            % Create AirDominanceMenu
            app.AirDominanceMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.AirDominanceMenu.ForegroundColor = [0 0.4471 0.7412];
            app.AirDominanceMenu.Text = 'Air Dominance';

            % Create AirSuperiorityMenu
            app.AirSuperiorityMenu = uimenu(app.AirDominanceMenu);
            app.AirSuperiorityMenu.Text = 'Air Superiority';

            % Create MobilityEffectMenu_2
            app.MobilityEffectMenu_2 = uimenu(app.AirSuperiorityMenu);
            app.MobilityEffectMenu_2.MenuSelectedFcn = createCallbackFcn(app, @MobilityEffectMenu_2Selected, true);
            app.MobilityEffectMenu_2.Text = 'Mobility Effect';

            % Create ArtilleryEffectMenu
            app.ArtilleryEffectMenu = uimenu(app.AirSuperiorityMenu);
            app.ArtilleryEffectMenu.MenuSelectedFcn = createCallbackFcn(app, @ArtilleryEffectMenuSelected, true);
            app.ArtilleryEffectMenu.Text = 'Artillery Effect';

            % Create AirEffectivenessEffectMenu
            app.AirEffectivenessEffectMenu = uimenu(app.AirSuperiorityMenu);
            app.AirEffectivenessEffectMenu.Text = 'Air Effectiveness Effect';

            % Create VulnerabilityEffectMenu
            app.VulnerabilityEffectMenu = uimenu(app.AirSuperiorityMenu);
            app.VulnerabilityEffectMenu.Text = 'Vulnerability Effect';

            % Create AirEqualityMenu
            app.AirEqualityMenu = uimenu(app.AirDominanceMenu);
            app.AirEqualityMenu.Text = 'Air Equality';

            % Create AirInferiorityMenu
            app.AirInferiorityMenu = uimenu(app.AirDominanceMenu);
            app.AirInferiorityMenu.Text = 'Air Inferiority';

            % Create MaritimeStrikeCapabilityMenu
            app.MaritimeStrikeCapabilityMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.MaritimeStrikeCapabilityMenu.Text = 'Maritime Strike Capability';

            % Create QJMMenu
            app.QJMMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.QJMMenu.ForegroundColor = [1 0.0745 0.651];
            app.QJMMenu.Text = 'QJM';

            % Create NonMobileWeaponsMenu
            app.NonMobileWeaponsMenu = uimenu(app.QJMMenu);
            app.NonMobileWeaponsMenu.MenuSelectedFcn = createCallbackFcn(app, @NonMobileWeaponsMenuSelected, true);
            app.NonMobileWeaponsMenu.Text = 'Non-Mobile Weapons';

            % Create MobileWeaponsMenu
            app.MobileWeaponsMenu = uimenu(app.QJMMenu);
            app.MobileWeaponsMenu.MenuSelectedFcn = createCallbackFcn(app, @MobileWeaponsMenuSelected, true);
            app.MobileWeaponsMenu.Text = 'Mobile Weapons';

            % Create CombatPowerMenu
            app.CombatPowerMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.CombatPowerMenu.ForegroundColor = [0 1 0];
            app.CombatPowerMenu.Text = 'Combat Power';

            % Create AirPowerMenu
            app.AirPowerMenu = uimenu(app.CombatPowerMenu);
            app.AirPowerMenu.Text = 'Air Power';

            % Create FighterMenu
            app.FighterMenu = uimenu(app.AirPowerMenu);
            app.FighterMenu.Text = 'Fighter';

            % Create EscortMenu
            app.EscortMenu = uimenu(app.AirPowerMenu);
            app.EscortMenu.Text = 'Escort';

            % Create TransportACMenu
            app.TransportACMenu = uimenu(app.AirPowerMenu);
            app.TransportACMenu.Text = 'Transport AC';

            % Create HelicopterMenu
            app.HelicopterMenu = uimenu(app.AirPowerMenu);
            app.HelicopterMenu.Text = 'Helicopter';

            % Create LandPowerMenu
            app.LandPowerMenu = uimenu(app.CombatPowerMenu);
            app.LandPowerMenu.Text = 'Land Power';

            % Create SFMenu
            app.SFMenu = uimenu(app.LandPowerMenu);
            app.SFMenu.Text = 'SF';

            % Create AmphibiousBrigadeMenu
            app.AmphibiousBrigadeMenu = uimenu(app.LandPowerMenu);
            app.AmphibiousBrigadeMenu.Text = 'Amphibious Brigade';

            % Create NavalPowerMenu
            app.NavalPowerMenu = uimenu(app.CombatPowerMenu);
            app.NavalPowerMenu.Text = 'Naval Power';

            % Create MaritimeFighterMenu
            app.MaritimeFighterMenu = uimenu(app.NavalPowerMenu);
            app.MaritimeFighterMenu.Text = 'Maritime Fighter';

            % Create INSJALASWAMenu
            app.INSJALASWAMenu = uimenu(app.NavalPowerMenu);
            app.INSJALASWAMenu.Text = 'INS JALASWA';

            % Create AiravatMenu
            app.AiravatMenu = uimenu(app.NavalPowerMenu);
            app.AiravatMenu.Text = 'Airavat';

            % Create GuldarMenu
            app.GuldarMenu = uimenu(app.NavalPowerMenu);
            app.GuldarMenu.Text = 'Guldar';

            % Create LCVMK4Menu
            app.LCVMK4Menu = uimenu(app.NavalPowerMenu);
            app.LCVMK4Menu.Text = 'LCV MK4';

            % Create MARCOSMenu
            app.MARCOSMenu = uimenu(app.NavalPowerMenu);
            app.MARCOSMenu.Text = 'MARCOS';

            % Create CourseofActionMenu
            app.CourseofActionMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.CourseofActionMenu.ForegroundColor = [1 0 1];
            app.CourseofActionMenu.Text = 'Course of Action';

            % Create CarrySFandMARCOSMenu
            app.CarrySFandMARCOSMenu = uimenu(app.CourseofActionMenu);
            app.CarrySFandMARCOSMenu.MenuSelectedFcn = createCallbackFcn(app, @CarrySFandMARCOSMenuSelected, true);
            app.CarrySFandMARCOSMenu.Text = 'Carry SF and MARCOS';

            % Create ConflictPointMenu
            app.ConflictPointMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.ConflictPointMenu.Text = 'Conflict Point';

            % Create SecuringtheMinicoyPortfromANEbySFandMARCOSMenu
            app.SecuringtheMinicoyPortfromANEbySFandMARCOSMenu = uimenu(app.ConflictPointMenu);
            app.SecuringtheMinicoyPortfromANEbySFandMARCOSMenu.Text = 'Securing the Minicoy Port from ANE by SF and MARCOS';

            % Create MovingtowardsAirstirpewhichis12kmawayMenu
            app.MovingtowardsAirstirpewhichis12kmawayMenu = uimenu(app.ConflictPointMenu);
            app.MovingtowardsAirstirpewhichis12kmawayMenu.Text = 'Moving towards Airstirpe which is 12 km away ';

            % Create CombattofreetheairstripebySFMARCOSAMPHForceMenu
            app.CombattofreetheairstripebySFMARCOSAMPHForceMenu = uimenu(app.ConflictPointMenu);
            app.CombattofreetheairstripebySFMARCOSAMPHForceMenu.Text = 'Combat to free the airstripe by SF+MARCOS+AMPH Force';

            % Create RemovingtheAAgunMenu
            app.RemovingtheAAgunMenu = uimenu(app.ConflictPointMenu);
            app.RemovingtheAAgunMenu.Text = 'Removing the AA gun';

            % Create SecuringthePortandAirstripeMenu
            app.SecuringthePortandAirstripeMenu = uimenu(app.ConflictPointMenu);
            app.SecuringthePortandAirstripeMenu.Text = 'Securing the Port and Airstripe';

            % Create FreetheHostagesandkilltheANEfromGovtResidenceMenu
            app.FreetheHostagesandkilltheANEfromGovtResidenceMenu = uimenu(app.ConflictPointMenu);
            app.FreetheHostagesandkilltheANEfromGovtResidenceMenu.Text = 'Free the Hostages and kill the ANE from Govt Residence';

            % Create IntelligenceMenu_2
            app.IntelligenceMenu_2 = uimenu(app.CombatPotentialComputationUIFigure);
            app.IntelligenceMenu_2.ForegroundColor = [0.4941 0.1843 0.5569];
            app.IntelligenceMenu_2.Text = 'Intelligence';

            % Create LocationofPortAirstripeMenu
            app.LocationofPortAirstripeMenu = uimenu(app.IntelligenceMenu_2);
            app.LocationofPortAirstripeMenu.Text = 'Location of Port & Airstripe';

            % Create LocationofAAgunsMenu
            app.LocationofAAgunsMenu = uimenu(app.IntelligenceMenu_2);
            app.LocationofAAgunsMenu.Text = 'Location of AA guns';

            % Create CoordinationMenu
            app.CoordinationMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.CoordinationMenu.Text = 'Coordination';

            % Create ScenarioDescriptionMenu
            app.ScenarioDescriptionMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.ScenarioDescriptionMenu.ForegroundColor = [0 0 1];
            app.ScenarioDescriptionMenu.Text = 'Scenario Description';

            % Create ObjOwnForcesPresentSituationMenu
            app.ObjOwnForcesPresentSituationMenu = uimenu(app.ScenarioDescriptionMenu);
            app.ObjOwnForcesPresentSituationMenu.MenuSelectedFcn = createCallbackFcn(app, @ObjOwnForcesPresentSituationMenuSelected, true);
            app.ObjOwnForcesPresentSituationMenu.Text = 'Obj / Own Forces / Present Situation';

            % Create CoursesofActionMenu
            app.CoursesofActionMenu = uimenu(app.ScenarioDescriptionMenu);
            app.CoursesofActionMenu.MenuSelectedFcn = createCallbackFcn(app, @CoursesofActionMenuSelected, true);
            app.CoursesofActionMenu.Text = 'Courses of Action';

            % Create MapMenu
            app.MapMenu = uimenu(app.ScenarioDescriptionMenu);
            app.MapMenu.MenuSelectedFcn = createCallbackFcn(app, @MapMenuSelected, true);
            app.MapMenu.Text = 'Map';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.CombatPotentialComputationUIFigure);
            app.GridLayout.ColumnWidth = {309, '1x', 556};
            app.GridLayout.RowHeight = {'1x'};
            app.GridLayout.ColumnSpacing = 0;
            app.GridLayout.RowSpacing = 0;
            app.GridLayout.Padding = [0 0 0 0];
            app.GridLayout.Scrollable = 'on';

            % Create LeftPanel
            app.LeftPanel = uipanel(app.GridLayout);
            app.LeftPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LeftPanel.Layout.Row = 1;
            app.LeftPanel.Layout.Column = 1;

            % Create REDDropDownLabel
            app.REDDropDownLabel = uilabel(app.LeftPanel);
            app.REDDropDownLabel.HorizontalAlignment = 'right';
            app.REDDropDownLabel.FontWeight = 'bold';
            app.REDDropDownLabel.FontColor = [1 0 0];
            app.REDDropDownLabel.Position = [6 695 41 22];
            app.REDDropDownLabel.Text = 'RED';

            % Create REDDropDown
            app.REDDropDown = uidropdown(app.LeftPanel);
            app.REDDropDown.Items = {'ANE at Port', 'ANE at Landing AirStrip', 'ANE at AA gunbase', 'ANE at Govt Residence'};
            app.REDDropDown.ValueChangedFcn = createCallbackFcn(app, @REDDropDownValueChanged, true);
            app.REDDropDown.FontWeight = 'bold';
            app.REDDropDown.Position = [62 695 224 22];
            app.REDDropDown.Value = 'ANE at AA gunbase';

            % Create AssualtRifleLabel
            app.AssualtRifleLabel = uilabel(app.LeftPanel);
            app.AssualtRifleLabel.HorizontalAlignment = 'right';
            app.AssualtRifleLabel.Position = [18 556 72 22];
            app.AssualtRifleLabel.Text = 'Assualt Rifle';

            % Create Red_Assualt_rifle
            app.Red_Assualt_rifle = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Assualt_rifle.Position = [139 559 53 22];
            app.Red_Assualt_rifle.Value = 50;

            % Create MachineGunsLabel
            app.MachineGunsLabel = uilabel(app.LeftPanel);
            app.MachineGunsLabel.HorizontalAlignment = 'right';
            app.MachineGunsLabel.Position = [18 525 83 22];
            app.MachineGunsLabel.Text = 'Machine Guns';

            % Create Red_MG
            app.Red_MG = uieditfield(app.LeftPanel, 'numeric');
            app.Red_MG.Position = [139 528 53 22];
            app.Red_MG.Value = 100;

            % Create PistolsLabel
            app.PistolsLabel = uilabel(app.LeftPanel);
            app.PistolsLabel.HorizontalAlignment = 'right';
            app.PistolsLabel.Position = [18 493 42 22];
            app.PistolsLabel.Text = 'Pistols';

            % Create Red_Pistol
            app.Red_Pistol = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Pistol.Position = [139 496 53 22];

            % Create ShotgunsLabel
            app.ShotgunsLabel = uilabel(app.LeftPanel);
            app.ShotgunsLabel.HorizontalAlignment = 'right';
            app.ShotgunsLabel.Position = [18 462 56 22];
            app.ShotgunsLabel.Text = 'Shotguns';

            % Create Red_Shotguns
            app.Red_Shotguns = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Shotguns.Position = [139 465 53 22];
            app.Red_Shotguns.Value = 100;

            % Create SnipperRiflesLabel
            app.SnipperRiflesLabel = uilabel(app.LeftPanel);
            app.SnipperRiflesLabel.HorizontalAlignment = 'right';
            app.SnipperRiflesLabel.Position = [18 436 80 22];
            app.SnipperRiflesLabel.Text = 'Snipper Rifles';

            % Create Red_Snipper_rifle
            app.Red_Snipper_rifle = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Snipper_rifle.Position = [139 437 53 22];
            app.Red_Snipper_rifle.Value = 1000;

            % Create GrenadeLaunchersLabel
            app.GrenadeLaunchersLabel = uilabel(app.LeftPanel);
            app.GrenadeLaunchersLabel.HorizontalAlignment = 'right';
            app.GrenadeLaunchersLabel.Position = [18 408 112 22];
            app.GrenadeLaunchersLabel.Text = 'Grenade Launchers';

            % Create Red_GL
            app.Red_GL = uieditfield(app.LeftPanel, 'numeric');
            app.Red_GL.Position = [141 410 50 22];
            app.Red_GL.Value = 150;

            % Create RocketLauncherLabel
            app.RocketLauncherLabel = uilabel(app.LeftPanel);
            app.RocketLauncherLabel.HorizontalAlignment = 'right';
            app.RocketLauncherLabel.Position = [18 374 96 22];
            app.RocketLauncherLabel.Text = 'Rocket Launcher';

            % Create Red_RL
            app.Red_RL = uieditfield(app.LeftPanel, 'numeric');
            app.Red_RL.Position = [139 375 53 22];
            app.Red_RL.Value = 10;

            % Create HostagesLabel
            app.HostagesLabel = uilabel(app.LeftPanel);
            app.HostagesLabel.HorizontalAlignment = 'right';
            app.HostagesLabel.Position = [18 316 56 22];
            app.HostagesLabel.Text = 'Hostages';

            % Create Red_Hostages
            app.Red_Hostages = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Hostages.Position = [139 318 53 22];
            app.Red_Hostages.Value = 20;

            % Create TankLabel_2
            app.TankLabel_2 = uilabel(app.LeftPanel);
            app.TankLabel_2.HorizontalAlignment = 'right';
            app.TankLabel_2.Position = [18 285 31 22];
            app.TankLabel_2.Text = 'Tank';

            % Create Red_Tank
            app.Red_Tank = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Tank.Position = [139 288 53 22];
            app.Red_Tank.Value = 20;

            % Create APCLabel_2
            app.APCLabel_2 = uilabel(app.LeftPanel);
            app.APCLabel_2.HorizontalAlignment = 'right';
            app.APCLabel_2.Position = [18 254 30 22];
            app.APCLabel_2.Text = 'APC';

            % Create Red_APC
            app.Red_APC = uieditfield(app.LeftPanel, 'numeric');
            app.Red_APC.Position = [139 257 53 22];
            app.Red_APC.Value = 10;

            % Create Red_Assualt_rifle_score
            app.Red_Assualt_rifle_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Assualt_rifle_score.Position = [219 559 53 22];
            app.Red_Assualt_rifle_score.Value = 4;

            % Create Red_MG_score
            app.Red_MG_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_MG_score.Position = [219 528 53 22];
            app.Red_MG_score.Value = 1;

            % Create Red_Pistol_score
            app.Red_Pistol_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Pistol_score.Position = [219 496 53 22];
            app.Red_Pistol_score.Value = 1;

            % Create Red_Shotgun_score
            app.Red_Shotgun_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Shotgun_score.Position = [219 465 53 22];
            app.Red_Shotgun_score.Value = 0.25;

            % Create Red_Snipper_rifle_score
            app.Red_Snipper_rifle_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Snipper_rifle_score.Position = [219 435 53 22];
            app.Red_Snipper_rifle_score.Value = 0.15;

            % Create Red_GL_score
            app.Red_GL_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_GL_score.Position = [219 405 53 22];
            app.Red_GL_score.Value = 2.5;

            % Create Red_RL_score
            app.Red_RL_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_RL_score.Position = [219 375 53 22];
            app.Red_RL_score.Value = 2.5;

            % Create Red_Hostages_score
            app.Red_Hostages_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Hostages_score.Position = [219 318 53 22];
            app.Red_Hostages_score.Value = 5;

            % Create Red_FighterAC_score
            app.Red_FighterAC_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_FighterAC_score.Position = [219 288 53 22];
            app.Red_FighterAC_score.Value = 3;

            % Create Red_EscortAC_score
            app.Red_EscortAC_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_EscortAC_score.Position = [219 257 53 22];
            app.Red_EscortAC_score.Value = 1;

            % Create Red_Helicopter_score
            app.Red_Helicopter_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Helicopter_score.Position = [219 226 53 22];
            app.Red_Helicopter_score.Value = 1;

            % Create ArtilleryLabel_2
            app.ArtilleryLabel_2 = uilabel(app.LeftPanel);
            app.ArtilleryLabel_2.HorizontalAlignment = 'right';
            app.ArtilleryLabel_2.Position = [18 224 46 22];
            app.ArtilleryLabel_2.Text = 'Artillery';

            % Create Red_Artillery
            app.Red_Artillery = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Artillery.ValueDisplayFormat = '%.0f';
            app.Red_Artillery.Position = [139 226 53 22];
            app.Red_Artillery.Value = 13000;

            % Create TotalCombatPotentialLabel
            app.TotalCombatPotentialLabel = uilabel(app.LeftPanel);
            app.TotalCombatPotentialLabel.HorizontalAlignment = 'right';
            app.TotalCombatPotentialLabel.Position = [24 113 127 22];
            app.TotalCombatPotentialLabel.Text = 'Total Combat Potential';

            % Create aa
            app.aa = uieditfield(app.LeftPanel, 'numeric');
            app.aa.ValueDisplayFormat = '%.2f';
            app.aa.Position = [166 113 100 22];

            % Create COMPUTEButton
            app.COMPUTEButton = uibutton(app.LeftPanel, 'push');
            app.COMPUTEButton.ButtonPushedFcn = createCallbackFcn(app, @COMPUTEButtonPushed2, true);
            app.COMPUTEButton.BackgroundColor = [1 0 0];
            app.COMPUTEButton.Position = [108 150 100 22];
            app.COMPUTEButton.Text = 'COMPUTE';

            % Create TerrainDropDownLabel
            app.TerrainDropDownLabel = uilabel(app.LeftPanel);
            app.TerrainDropDownLabel.HorizontalAlignment = 'right';
            app.TerrainDropDownLabel.Position = [79 627 42 22];
            app.TerrainDropDownLabel.Text = 'Terrain';

            % Create TerrainDropDown
            app.TerrainDropDown = uidropdown(app.LeftPanel);
            app.TerrainDropDown.Items = {'Open', 'Urban', 'Rough', 'Mountain'};
            app.TerrainDropDown.ValueChangedFcn = createCallbackFcn(app, @TerrainDropDownValueChanged, true);
            app.TerrainDropDown.Position = [133 630 90 22];
            app.TerrainDropDown.Value = 'Open';

            % Create Red_Pers_score
            app.Red_Pers_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Pers_score.Position = [218 188 53 22];
            app.Red_Pers_score.Value = 5;

            % Create PersLabel
            app.PersLabel = uilabel(app.LeftPanel);
            app.PersLabel.HorizontalAlignment = 'right';
            app.PersLabel.Position = [18 187 30 22];
            app.PersLabel.Text = 'Pers';

            % Create Red_Pers
            app.Red_Pers = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Pers.ValueDisplayFormat = '%.0f';
            app.Red_Pers.Position = [139 188 53 22];

            % Create Image
            app.Image = uiimage(app.LeftPanel);
            app.Image.Position = [101 29 100 68];
            app.Image.ImageSource = 'MIDiv.jpg';

            % Create PostureDropDownLabel
            app.PostureDropDownLabel = uilabel(app.LeftPanel);
            app.PostureDropDownLabel.BackgroundColor = [1 0 0];
            app.PostureDropDownLabel.HorizontalAlignment = 'center';
            app.PostureDropDownLabel.FontColor = [1 1 1];
            app.PostureDropDownLabel.Position = [58 661 51 22];
            app.PostureDropDownLabel.Text = ' Posture';

            % Create PostureDropDown
            app.PostureDropDown = uidropdown(app.LeftPanel);
            app.PostureDropDown.Items = {'Attack', 'Defence (Hasty)', 'Defence (Prepared)', 'Defence (Fortified)', 'Withdrawal', 'Delay'};
            app.PostureDropDown.ValueChangedFcn = createCallbackFcn(app, @PostureDropDownValueChanged, true);
            app.PostureDropDown.FontColor = [1 1 1];
            app.PostureDropDown.BackgroundColor = [1 0 0];
            app.PostureDropDown.Position = [122 661 157 22];
            app.PostureDropDown.Value = 'Attack';

            % Create AAGunsLabel
            app.AAGunsLabel = uilabel(app.LeftPanel);
            app.AAGunsLabel.HorizontalAlignment = 'right';
            app.AAGunsLabel.Position = [18 349 54 22];
            app.AAGunsLabel.Text = 'AA Guns';

            % Create Red_AA
            app.Red_AA = uieditfield(app.LeftPanel, 'numeric');
            app.Red_AA.Position = [138 347 53 22];
            app.Red_AA.Value = 4;

            % Create Red_AA_score
            app.Red_AA_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_AA_score.Position = [218 347 53 22];
            app.Red_AA_score.Value = 2.5;

            % Create DropDown
            app.DropDown = uidropdown(app.LeftPanel);
            app.DropDown.Items = {'Scores', 'OLI'};
            app.DropDown.Position = [207 594 71 22];
            app.DropDown.Value = 'Scores';

            % Create QntLabel
            app.QntLabel = uilabel(app.LeftPanel);
            app.QntLabel.Position = [150 594 28 22];
            app.QntLabel.Text = 'Qnt.';

            % Create CenterPanel
            app.CenterPanel = uipanel(app.GridLayout);
            app.CenterPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.CenterPanel.Layout.Row = 1;
            app.CenterPanel.Layout.Column = 2;

            % Create BLUEDropDownLabel
            app.BLUEDropDownLabel = uilabel(app.CenterPanel);
            app.BLUEDropDownLabel.HorizontalAlignment = 'right';
            app.BLUEDropDownLabel.FontWeight = 'bold';
            app.BLUEDropDownLabel.FontColor = [0 0.4471 0.7412];
            app.BLUEDropDownLabel.Position = [15 695 38 22];
            app.BLUEDropDownLabel.Text = 'BLUE';

            % Create BLUEDropDown
            app.BLUEDropDown = uidropdown(app.CenterPanel);
            app.BLUEDropDown.Items = {'Amphibious Troops-From INS', 'Amphibious Troops- From Mi17 Helicopter', 'Amphibious Brigade', 'SF & MARCOS'};
            app.BLUEDropDown.ValueChangedFcn = createCallbackFcn(app, @BLUEDropDownValueChanged, true);
            app.BLUEDropDown.Position = [68 695 199 22];
            app.BLUEDropDown.Value = 'SF & MARCOS';

            % Create AssualtRifleEditFieldLabel
            app.AssualtRifleEditFieldLabel = uilabel(app.CenterPanel);
            app.AssualtRifleEditFieldLabel.HorizontalAlignment = 'right';
            app.AssualtRifleEditFieldLabel.Position = [9 555 72 22];
            app.AssualtRifleEditFieldLabel.Text = 'Assualt Rifle';

            % Create Blue_Assualt_rifle
            app.Blue_Assualt_rifle = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_Assualt_rifle.Position = [129 556 53 22];
            app.Blue_Assualt_rifle.Value = 150;

            % Create MachineGumsEditFieldLabel
            app.MachineGumsEditFieldLabel = uilabel(app.CenterPanel);
            app.MachineGumsEditFieldLabel.HorizontalAlignment = 'right';
            app.MachineGumsEditFieldLabel.Position = [9 527 86 22];
            app.MachineGumsEditFieldLabel.Text = 'Machine Gums';

            % Create Blue_MG
            app.Blue_MG = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_MG.Position = [130 526 53 22];
            app.Blue_MG.Value = 50;

            % Create PistolEditFieldLabel
            app.PistolEditFieldLabel = uilabel(app.CenterPanel);
            app.PistolEditFieldLabel.Position = [10 495 42 22];
            app.PistolEditFieldLabel.Text = 'Pistol';

            % Create Blue_Pistol
            app.Blue_Pistol = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_Pistol.Position = [130 495 53 22];

            % Create ShotgunsEditFieldLabel
            app.ShotgunsEditFieldLabel = uilabel(app.CenterPanel);
            app.ShotgunsEditFieldLabel.HorizontalAlignment = 'right';
            app.ShotgunsEditFieldLabel.Position = [9 459 56 22];
            app.ShotgunsEditFieldLabel.Text = 'Shotguns';

            % Create Blue_shotguns
            app.Blue_shotguns = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_shotguns.Position = [130 459 53 22];

            % Create SnipperRifleEditFieldLabel
            app.SnipperRifleEditFieldLabel = uilabel(app.CenterPanel);
            app.SnipperRifleEditFieldLabel.HorizontalAlignment = 'right';
            app.SnipperRifleEditFieldLabel.Position = [9 429 74 22];
            app.SnipperRifleEditFieldLabel.Text = 'Snipper Rifle';

            % Create Blue_snipper_rifle
            app.Blue_snipper_rifle = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_snipper_rifle.Position = [132 432 53 22];

            % Create GrenadeLaunchersEditFieldLabel
            app.GrenadeLaunchersEditFieldLabel = uilabel(app.CenterPanel);
            app.GrenadeLaunchersEditFieldLabel.HorizontalAlignment = 'right';
            app.GrenadeLaunchersEditFieldLabel.Position = [9 401 112 22];
            app.GrenadeLaunchersEditFieldLabel.Text = 'Grenade Launchers';

            % Create Blue_GL
            app.Blue_GL = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_GL.Position = [130 402 53 22];

            % Create TerrainDropDown_2Label
            app.TerrainDropDown_2Label = uilabel(app.CenterPanel);
            app.TerrainDropDown_2Label.HorizontalAlignment = 'right';
            app.TerrainDropDown_2Label.Position = [73 628 42 22];
            app.TerrainDropDown_2Label.Text = 'Terrain';

            % Create TerrainDropDown_2
            app.TerrainDropDown_2 = uidropdown(app.CenterPanel);
            app.TerrainDropDown_2.Items = {'Open', 'Urban', 'Rough', 'Mountain'};
            app.TerrainDropDown_2.ValueChangedFcn = createCallbackFcn(app, @TerrainDropDown_2ValueChanged, true);
            app.TerrainDropDown_2.Position = [130 628 90 22];
            app.TerrainDropDown_2.Value = 'Open';

            % Create Tank_blue_score
            app.Tank_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Tank_blue_score.Position = [210 556 53 22];
            app.Tank_blue_score.Value = 5;

            % Create APC_blue_score
            app.APC_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.APC_blue_score.Position = [210 525 53 22];
            app.APC_blue_score.Value = 1;

            % Create LR_blue_score
            app.LR_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.LR_blue_score.Position = [210 494 53 22];
            app.LR_blue_score.Value = 1.2;

            % Create SR_blue_score
            app.SR_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.SR_blue_score.Position = [210 463 53 22];
            app.SR_blue_score.Value = 3;

            % Create Mortar_blue_score
            app.Mortar_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Mortar_blue_score.Position = [210 432 53 22];
            app.Mortar_blue_score.Value = 0.18;

            % Create Arty_blue_score
            app.Arty_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Arty_blue_score.Position = [210 401 53 22];
            app.Arty_blue_score.Value = 3.5;

            % Create TotalCombatPotentialLabel_2
            app.TotalCombatPotentialLabel_2 = uilabel(app.CenterPanel);
            app.TotalCombatPotentialLabel_2.HorizontalAlignment = 'right';
            app.TotalCombatPotentialLabel_2.Position = [7 113 127 22];
            app.TotalCombatPotentialLabel_2.Text = 'Total Combat Potential';

            % Create COMPUTEButton_2
            app.COMPUTEButton_2 = uibutton(app.CenterPanel, 'push');
            app.COMPUTEButton_2.ButtonPushedFcn = createCallbackFcn(app, @COMPUTEButton_2Pushed, true);
            app.COMPUTEButton_2.BackgroundColor = [0.0745 0.6235 1];
            app.COMPUTEButton_2.Position = [118 168 100 22];
            app.COMPUTEButton_2.Text = 'COMPUTE';

            % Create RocketLauncherEditFieldLabel
            app.RocketLauncherEditFieldLabel = uilabel(app.CenterPanel);
            app.RocketLauncherEditFieldLabel.HorizontalAlignment = 'right';
            app.RocketLauncherEditFieldLabel.Position = [9 373 96 22];
            app.RocketLauncherEditFieldLabel.Text = 'Rocket Launcher';

            % Create Blue_RL
            app.Blue_RL = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_RL.Position = [130 371 53 22];

            % Create TankLabel
            app.TankLabel = uilabel(app.CenterPanel);
            app.TankLabel.HorizontalAlignment = 'right';
            app.TankLabel.Position = [9 340 31 22];
            app.TankLabel.Text = 'Tank';

            % Create Blue_tank
            app.Blue_tank = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_tank.Position = [130 340 53 22];
            app.Blue_tank.Value = 8;

            % Create APCLabel
            app.APCLabel = uilabel(app.CenterPanel);
            app.APCLabel.HorizontalAlignment = 'right';
            app.APCLabel.Position = [9 310 30 22];
            app.APCLabel.Text = 'APC';

            % Create Blue_APC
            app.Blue_APC = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_APC.Position = [130 310 53 22];
            app.Blue_APC.Value = 8;

            % Create ArtilleryLabel
            app.ArtilleryLabel = uilabel(app.CenterPanel);
            app.ArtilleryLabel.HorizontalAlignment = 'right';
            app.ArtilleryLabel.Position = [9 279 46 22];
            app.ArtilleryLabel.Text = 'Artillery';

            % Create BLue_Artillery
            app.BLue_Artillery = uieditfield(app.CenterPanel, 'numeric');
            app.BLue_Artillery.Position = [130 280 53 22];
            app.BLue_Artillery.Value = 6;

            % Create LCVCEditFieldLabel
            app.LCVCEditFieldLabel = uilabel(app.CenterPanel);
            app.LCVCEditFieldLabel.HorizontalAlignment = 'right';
            app.LCVCEditFieldLabel.Position = [9 251 38 22];
            app.LCVCEditFieldLabel.Text = 'LCVC';

            % Create Blue_LCVC
            app.Blue_LCVC = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_LCVC.ValueDisplayFormat = '%.0f';
            app.Blue_LCVC.Position = [130 250 53 22];
            app.Blue_LCVC.Value = 3000;

            % Create Helicopter_blue_score
            app.Helicopter_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Helicopter_blue_score.Position = [210 370 53 22];
            app.Helicopter_blue_score.Value = 2.8;

            % Create Fighter_blue_score
            app.Fighter_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Fighter_blue_score.Position = [210 339 53 22];
            app.Fighter_blue_score.Value = 6;

            % Create GroundAttack_blue_score
            app.GroundAttack_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.GroundAttack_blue_score.Position = [210 309 53 22];
            app.GroundAttack_blue_score.Value = 3.2;

            % Create UAV_blue_score
            app.UAV_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.UAV_blue_score.Position = [210 279 53 22];
            app.UAV_blue_score.Value = 1;

            % Create Pers_blue_score
            app.Pers_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Pers_blue_score.Position = [210 249 53 22];
            app.Pers_blue_score.Value = 1;

            % Create bb
            app.bb = uieditfield(app.CenterPanel, 'numeric');
            app.bb.ValueDisplayFormat = '%.2f';
            app.bb.Position = [166 113 100 22];

            % Create blue_EqNComp_score
            app.blue_EqNComp_score = uieditfield(app.CenterPanel, 'numeric');
            app.blue_EqNComp_score.Position = [211 214 53 22];
            app.blue_EqNComp_score.Value = 5;

            % Create PersLabel_2
            app.PersLabel_2 = uilabel(app.CenterPanel);
            app.PersLabel_2.HorizontalAlignment = 'right';
            app.PersLabel_2.Position = [9 215 30 22];
            app.PersLabel_2.Text = 'Pers';

            % Create Blue_Pers
            app.Blue_Pers = uieditfield(app.CenterPanel, 'numeric');
            app.Blue_Pers.ValueDisplayFormat = '%.0f';
            app.Blue_Pers.Position = [132 214 53 22];

            % Create Image2
            app.Image2 = uiimage(app.CenterPanel);
            app.Image2.Position = [116 29 91 73];
            app.Image2.ImageSource = 'T72Bgd.jpg';

            % Create PostureDropDown_2Label
            app.PostureDropDown_2Label = uilabel(app.CenterPanel);
            app.PostureDropDown_2Label.BackgroundColor = [0 0.4471 0.7412];
            app.PostureDropDown_2Label.HorizontalAlignment = 'center';
            app.PostureDropDown_2Label.FontColor = [1 1 1];
            app.PostureDropDown_2Label.Position = [28 661 56 22];
            app.PostureDropDown_2Label.Text = ' Posture';

            % Create PostureDropDown_2
            app.PostureDropDown_2 = uidropdown(app.CenterPanel);
            app.PostureDropDown_2.Items = {'Attack', 'Defence (Hasty)', 'Defence (Prepared)', 'Defence (Fortified)', 'Withdrawal', 'Delay'};
            app.PostureDropDown_2.ValueChangedFcn = createCallbackFcn(app, @PostureDropDown_2ValueChanged, true);
            app.PostureDropDown_2.FontColor = [1 1 1];
            app.PostureDropDown_2.BackgroundColor = [0 0.4471 0.7412];
            app.PostureDropDown_2.Position = [97 661 157 22];
            app.PostureDropDown_2.Value = 'Attack';

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.CenterPanel);
            app.DropDown_2.Items = {'Scores', 'OLI'};
            app.DropDown_2.Position = [202 591 71 22];
            app.DropDown_2.Value = 'Scores';

            % Create QntLabel_2
            app.QntLabel_2 = uilabel(app.CenterPanel);
            app.QntLabel_2.Position = [145 591 28 22];
            app.QntLabel_2.Text = 'Qnt.';

            % Create RightPanel
            app.RightPanel = uipanel(app.GridLayout);
            app.RightPanel.Layout.Row = 1;
            app.RightPanel.Layout.Column = 3;

            % Create Label
            app.Label = uilabel(app.RightPanel);
            app.Label.FontSize = 8;
            app.Label.FontColor = [0 0 1];
            app.Label.Position = [75 13 385 22];
            app.Label.Text = '[Referance]:The strategic Postures of China and India, Frank O''Donnell and Alex Bollfrass, HARVARD Kennedy School, BELFER CENTER for Science and International Affairs, March 2020.';

            % Create ForceRatioREDBLUEButton
            app.ForceRatioREDBLUEButton = uibutton(app.RightPanel, 'push');
            app.ForceRatioREDBLUEButton.ButtonPushedFcn = createCallbackFcn(app, @ForceRatioREDBLUEButtonPushed, true);
            app.ForceRatioREDBLUEButton.Position = [79 695 173 22];
            app.ForceRatioREDBLUEButton.Text = 'Force Ratio   (RED/BLUE)   =';

            % Create FR
            app.FR = uieditfield(app.RightPanel, 'numeric');
            app.FR.Position = [287 695 100 22];

            % Create ComputeAttritionRatesButton
            app.ComputeAttritionRatesButton = uibutton(app.RightPanel, 'push');
            app.ComputeAttritionRatesButton.ButtonPushedFcn = createCallbackFcn(app, @ComputeAttritionRatesButtonPushed, true);
            app.ComputeAttritionRatesButton.Position = [188 150 143 22];
            app.ComputeAttritionRatesButton.Text = 'Compute Attrition Rates';

            % Create outputA
            app.outputA = uieditfield(app.RightPanel, 'numeric');
            app.outputA.ValueDisplayFormat = '%7.5f';
            app.outputA.Editable = 'off';
            app.outputA.Position = [154 113 100 22];

            % Create outputB
            app.outputB = uieditfield(app.RightPanel, 'numeric');
            app.outputB.ValueDisplayFormat = '%7.5f';
            app.outputB.Editable = 'off';
            app.outputB.Position = [155 80 100 22];

            % Create A
            app.A = uilabel(app.RightPanel);
            app.A.HorizontalAlignment = 'right';
            app.A.FontColor = [0.851 0.3255 0.098];
            app.A.Position = [19 112 123 23];
            app.A.Text = 'RED Attrition Rate (A)';

            % Create B
            app.B = uilabel(app.RightPanel);
            app.B.HorizontalAlignment = 'right';
            app.B.FontColor = [0 0.4471 0.7412];
            app.B.Position = [13 79 129 23];
            app.B.Text = 'BLUE Attrition Rate (B)';

            % Create DefenderUIAxes
            app.DefenderUIAxes = uiaxes(app.RightPanel);
            title(app.DefenderUIAxes, 'Red verses Blue')
            xlabel(app.DefenderUIAxes, 'time(in min)')
            ylabel(app.DefenderUIAxes, 'Combat Power  ')
            app.DefenderUIAxes.PlotBoxAspectRatio = [1.02586206896552 1 1];
            app.DefenderUIAxes.FontSize = 8;
            app.DefenderUIAxes.XTick = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60];
            app.DefenderUIAxes.XTickLabel = {'1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9'; '10'; '11'; '12'; '13'; '14'; '15'; '16'; '17'; '18'; '19'; '20'; '21'; '22'; '23'; '24'; '25'; '26'; '27'; '28'; '29'; '30'; '31'; '32'; '33'; '34'; '35'; '36'; '37'; '38'; '39'; '40'; '41'; '42'; '43'; '44'; '45'; '46'; '47'; '48'; '49'; '50'; '51'; '52'; '53'; '54'; '55'; '56'; '57'; '58'; '59'; '60'};
            app.DefenderUIAxes.Position = [26 388 221 222];

            % Create AttackerUIAxes
            app.AttackerUIAxes = uiaxes(app.RightPanel);
            title(app.AttackerUIAxes, 'Force Ratio')
            xlabel(app.AttackerUIAxes, 'Time (in Min)')
            ylabel(app.AttackerUIAxes, 'Force Ratio (RED/BLUE)')
            app.AttackerUIAxes.PlotBoxAspectRatio = [1.02586206896552 1 1];
            app.AttackerUIAxes.FontSize = 8;
            app.AttackerUIAxes.XTick = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50];
            app.AttackerUIAxes.XTickLabel = {'1'; '2'; '3'; '4'; '5'; '6'; '1'; '8'; '9'; '10'; '11'; '12'; '13'; '14'; '15'; '16'; '17'; '18'; '19'; '20'; '21'; '22'; '23'; '24'; '25'; '26'; '27'; '28'; '29'; '30'; '31'; '32'; '33'; '34'; '35'; '36'; '37'; '38'; '39'; '40'; '41'; '42'; '43'; '44'; '45'; '46'; '47'; '48'; '49'; '50'};
            app.AttackerUIAxes.Position = [259 394 221 222];

            % Create BattleTimetEditFieldLabel
            app.BattleTimetEditFieldLabel = uilabel(app.RightPanel);
            app.BattleTimetEditFieldLabel.HorizontalAlignment = 'right';
            app.BattleTimetEditFieldLabel.FontWeight = 'bold';
            app.BattleTimetEditFieldLabel.FontColor = [0.0745 0.6235 1];
            app.BattleTimetEditFieldLabel.Position = [152 661 85 22];
            app.BattleTimetEditFieldLabel.Text = 'Battle Time (t)';

            % Create BattleTimetEditField
            app.BattleTimetEditField = uieditfield(app.RightPanel, 'numeric');
            app.BattleTimetEditField.Limits = [0 150];
            app.BattleTimetEditField.ValueDisplayFormat = '%.0f';
            app.BattleTimetEditField.Position = [252 664 87 22];
            app.BattleTimetEditField.Value = 14;

            % Create RedLossEditFieldLabel
            app.RedLossEditFieldLabel = uilabel(app.RightPanel);
            app.RedLossEditFieldLabel.BackgroundColor = [1 0 0];
            app.RedLossEditFieldLabel.HorizontalAlignment = 'center';
            app.RedLossEditFieldLabel.Position = [83 630 56 22];
            app.RedLossEditFieldLabel.Text = 'Red Loss';

            % Create Redloss
            app.Redloss = uieditfield(app.RightPanel, 'numeric');
            app.Redloss.Position = [154 630 35 22];
            app.Redloss.Value = 90;

            % Create BlueLossEditFieldLabel
            app.BlueLossEditFieldLabel = uilabel(app.RightPanel);
            app.BlueLossEditFieldLabel.BackgroundColor = [0 0 1];
            app.BlueLossEditFieldLabel.HorizontalAlignment = 'center';
            app.BlueLossEditFieldLabel.FontColor = [1 1 1];
            app.BlueLossEditFieldLabel.Position = [277 629 62 22];
            app.BlueLossEditFieldLabel.Text = 'Blue Loss';

            % Create Blueloss
            app.Blueloss = uieditfield(app.RightPanel, 'numeric');
            app.Blueloss.Position = [346 629 41 22];
            app.Blueloss.Value = 10;

            % Create Label_2
            app.Label_2 = uilabel(app.RightPanel);
            app.Label_2.Position = [197 630 25 22];
            app.Label_2.Text = '%';

            % Create Label_3
            app.Label_3 = uilabel(app.RightPanel);
            app.Label_3.Position = [405 629 25 22];
            app.Label_3.Text = '%';

            % Create AnalysisButton
            app.AnalysisButton = uibutton(app.RightPanel, 'push');
            app.AnalysisButton.ButtonPushedFcn = createCallbackFcn(app, @AnalysisButtonPushed, true);
            app.AnalysisButton.Position = [218 44 100 22];
            app.AnalysisButton.Text = 'Analysis';

            % Create MapButton
            app.MapButton = uibutton(app.RightPanel, 'push');
            app.MapButton.ButtonPushedFcn = createCallbackFcn(app, @MapButtonPushed, true);
            app.MapButton.Position = [363 44 43 22];
            app.MapButton.Text = 'Map';

            % Create fig3UIAxes
            app.fig3UIAxes = uiaxes(app.RightPanel);
            title(app.fig3UIAxes, 'Contour Plot of SSR')
            xlabel(app.fig3UIAxes, 'p')
            ylabel(app.fig3UIAxes, 'q')
            app.fig3UIAxes.PlotBoxAspectRatio = [1.02155172413793 1 1];
            app.fig3UIAxes.FontSize = 8;
            app.fig3UIAxes.XGrid = 'on';
            app.fig3UIAxes.YGrid = 'on';
            app.fig3UIAxes.ZGrid = 'on';
            app.fig3UIAxes.Position = [26 177 221 222];

            % Create fig4UIAxes
            app.fig4UIAxes = uiaxes(app.RightPanel);
            title(app.fig4UIAxes, '3D Surface of SSR')
            xlabel(app.fig4UIAxes, 'p')
            ylabel(app.fig4UIAxes, 'q')
            app.fig4UIAxes.PlotBoxAspectRatio = [1.02155172413793 1 1];
            app.fig4UIAxes.FontSize = 8;
            app.fig4UIAxes.XGrid = 'on';
            app.fig4UIAxes.YGrid = 'on';
            app.fig4UIAxes.ZGrid = 'on';
            app.fig4UIAxes.Position = [261 175 221 222];

            % Create ABLabel
            app.ABLabel = uilabel(app.RightPanel);
            app.ABLabel.HorizontalAlignment = 'right';
            app.ABLabel.Position = [304 112 56 22];
            app.ABLabel.Text = 'A/B  =';

            % Create ABRatio
            app.ABRatio = uieditfield(app.RightPanel, 'numeric');
            app.ABRatio.Position = [375 112 100 22];

            % Show the figure after all components are created
            app.CombatPotentialComputationUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Combat_Potential_Forces_3p4_minicoy_island_exported(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.CombatPotentialComputationUIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.CombatPotentialComputationUIFigure)
        end
    end
end