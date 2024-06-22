classdef Combat_Potential_Forces_3p3_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CombatPotentialComputationUIFigure  matlab.ui.Figure
        GridLayout                    matlab.ui.container.GridLayout
        LeftPanel                     matlab.ui.container.Panel
        REDDropDownLabel              matlab.ui.control.Label
        REDDropDown                   matlab.ui.control.DropDown
        TankEditFieldLabel            matlab.ui.control.Label
        RedTankEditField              matlab.ui.control.NumericEditField
        APCEditFieldLabel             matlab.ui.control.Label
        RedAPCEditField               matlab.ui.control.NumericEditField
        LRAntiarmrEditFieldLabel      matlab.ui.control.Label
        RedLRAntiarmrEditField        matlab.ui.control.NumericEditField
        SRAntiarmrEditFieldLabel      matlab.ui.control.Label
        RedSRAntiarmrEditField        matlab.ui.control.NumericEditField
        MortarEditFieldLabel          matlab.ui.control.Label
        RedMortarEditField            matlab.ui.control.NumericEditField
        ArtyEditFieldLabel            matlab.ui.control.Label
        RedArtyEditField              matlab.ui.control.NumericEditField
        HelicopterEditFieldLabel      matlab.ui.control.Label
        RedHelicopterEditField        matlab.ui.control.NumericEditField
        FighterEditFieldLabel         matlab.ui.control.Label
        RedFighterEditField           matlab.ui.control.NumericEditField
        GroundAttackEditFieldLabel    matlab.ui.control.Label
        RedGroundAttackEditField      matlab.ui.control.NumericEditField
        UAVEditFieldLabel             matlab.ui.control.Label
        RedUAVEditField               matlab.ui.control.NumericEditField
        Red_Tank_score                matlab.ui.control.NumericEditField
        Red_APC_score                 matlab.ui.control.NumericEditField
        Red_LR_score                  matlab.ui.control.NumericEditField
        Red_SR_score                  matlab.ui.control.NumericEditField
        Red_Mortar_score              matlab.ui.control.NumericEditField
        Red_Arty_score                matlab.ui.control.NumericEditField
        Red_Helicopter_score          matlab.ui.control.NumericEditField
        Red_Fighter_score             matlab.ui.control.NumericEditField
        Red_GroundAttack_score        matlab.ui.control.NumericEditField
        Red_UAV_score                 matlab.ui.control.NumericEditField
        Red_pers_score                matlab.ui.control.NumericEditField
        PersEditFieldLabel            matlab.ui.control.Label
        RedPersEditField              matlab.ui.control.NumericEditField
        TotalCombatPotentialLabel     matlab.ui.control.Label
        aa                            matlab.ui.control.NumericEditField
        COMPUTEButton                 matlab.ui.control.Button
        TerrainDropDownLabel          matlab.ui.control.Label
        TerrainDropDown               matlab.ui.control.DropDown
        red_EqNComp_score             matlab.ui.control.NumericEditField
        EqNavalCompoLabel             matlab.ui.control.Label
        red_EqNavalC                  matlab.ui.control.NumericEditField
        Image                         matlab.ui.control.Image
        PostureDropDownLabel          matlab.ui.control.Label
        PostureDropDown               matlab.ui.control.DropDown
        DropDown                      matlab.ui.control.DropDown
        QntLabel                      matlab.ui.control.Label
        CenterPanel                   matlab.ui.container.Panel
        BLUEDropDownLabel             matlab.ui.control.Label
        BLUEDropDown                  matlab.ui.control.DropDown
        TankEditField_2Label          matlab.ui.control.Label
        TankEditField_2               matlab.ui.control.NumericEditField
        APCEditField_2Label           matlab.ui.control.Label
        APCEditField_2                matlab.ui.control.NumericEditField
        LRAntiarmrEditField_3Label    matlab.ui.control.Label
        LRAntiarmrEditField_3         matlab.ui.control.NumericEditField
        SRAntiarmrEditField_2Label    matlab.ui.control.Label
        SRAntiarmrEditField_2         matlab.ui.control.NumericEditField
        MortarEditField_2Label        matlab.ui.control.Label
        MortarEditField_2             matlab.ui.control.NumericEditField
        ArtyEditField_2Label          matlab.ui.control.Label
        ArtyEditField_2               matlab.ui.control.NumericEditField
        TerrainDropDown_2Label        matlab.ui.control.Label
        TerrainDropDown_2             matlab.ui.control.DropDown
        Tank_blue_score               matlab.ui.control.NumericEditField
        APC_blue_score                matlab.ui.control.NumericEditField
        LR_blue_score                 matlab.ui.control.NumericEditField
        SR_blue_score                 matlab.ui.control.NumericEditField
        Mortar_blue_score             matlab.ui.control.NumericEditField
        Arty_blue_score               matlab.ui.control.NumericEditField
        TotalCombatPotentialLabel_2   matlab.ui.control.Label
        COMPUTEButton_2               matlab.ui.control.Button
        HelicopterEditField_2Label    matlab.ui.control.Label
        HelicopterEditField_2         matlab.ui.control.NumericEditField
        FighterEditField_2Label       matlab.ui.control.Label
        FighterEditField_2            matlab.ui.control.NumericEditField
        GroundAttackEditField_2Label  matlab.ui.control.Label
        GroundAttackEditField_2       matlab.ui.control.NumericEditField
        UAVEditField_2Label           matlab.ui.control.Label
        UAVEditField_2                matlab.ui.control.NumericEditField
        PersEditField_2Label          matlab.ui.control.Label
        PersEditField_2               matlab.ui.control.NumericEditField
        Helicopter_blue_score         matlab.ui.control.NumericEditField
        Fighter_blue_score            matlab.ui.control.NumericEditField
        GroundAttack_blue_score       matlab.ui.control.NumericEditField
        UAV_blue_score                matlab.ui.control.NumericEditField
        Pers_blue_score               matlab.ui.control.NumericEditField
        bb                            matlab.ui.control.NumericEditField
        blue_EqNComp_score            matlab.ui.control.NumericEditField
        EqNavalCompoLabel_2           matlab.ui.control.Label
        blue_EqNavalC                 matlab.ui.control.NumericEditField
        Image2                        matlab.ui.control.Image
        PostureDropDown_2Label        matlab.ui.control.Label
        PostureDropDown_2             matlab.ui.control.DropDown
        DropDown_2                    matlab.ui.control.DropDown
        QntLabel_2                    matlab.ui.control.Label
        RightPanel                    matlab.ui.container.Panel
        DefenderUIAxes                matlab.ui.control.UIAxes
        AttackerUIAxes                matlab.ui.control.UIAxes
        fig3UIAxes                    matlab.ui.control.UIAxes
        fig4UIAxes                    matlab.ui.control.UIAxes
        Label                         matlab.ui.control.Label
        ForceRatioREDBLUEButton       matlab.ui.control.Button
        FR                            matlab.ui.control.NumericEditField
        ComputeAttritionRatesButton   matlab.ui.control.Button
        outputA                       matlab.ui.control.NumericEditField
        outputB                       matlab.ui.control.NumericEditField
        A                             matlab.ui.control.Label
        B                             matlab.ui.control.Label
        BattleTimetEditFieldLabel     matlab.ui.control.Label
        BattleTimetEditField          matlab.ui.control.NumericEditField
        RedLossEditFieldLabel         matlab.ui.control.Label
        Redloss                       matlab.ui.control.NumericEditField
        BlueLossEditFieldLabel        matlab.ui.control.Label
        Blueloss                      matlab.ui.control.NumericEditField
        Label_2                       matlab.ui.control.Label
        Label_3                       matlab.ui.control.Label
        AnalysisButton                matlab.ui.control.Button
        MapButton                     matlab.ui.control.Button
        ABLabel                       matlab.ui.control.Label
        ABRatio                       matlab.ui.control.NumericEditField
        TerrainMenu                   matlab.ui.container.Menu
        MobilityEffectMenu            matlab.ui.container.Menu
        DefensePostureEffectMenu      matlab.ui.container.Menu
        WeatherMenu                   matlab.ui.container.Menu
        MobilityMenu                  matlab.ui.container.Menu
        AttackPostureMenu             matlab.ui.container.Menu
        ArtilleryMenu                 matlab.ui.container.Menu
        AirMenu                       matlab.ui.container.Menu
        TanksMenu                     matlab.ui.container.Menu
        IntangibleFactorsMenu         matlab.ui.container.Menu
        CombatEffectivenessMenu       matlab.ui.container.Menu
        LeadershipMenu                matlab.ui.container.Menu
        TrainingExperiencesMenu       matlab.ui.container.Menu
        MoraleMenu                    matlab.ui.container.Menu
        LogisticMenu                  matlab.ui.container.Menu
        TimesMenu                     matlab.ui.container.Menu
        SpaceMenu                     matlab.ui.container.Menu
        MomentumMenu                  matlab.ui.container.Menu
        IntelligenceMenu              matlab.ui.container.Menu
        TechnologyMenu                matlab.ui.container.Menu
        InitiativeMenu                matlab.ui.container.Menu
        AirSuperiorityFactorMenu      matlab.ui.container.Menu
        AirSuperiorityMenu            matlab.ui.container.Menu
        MobilityEffectMenu_2          matlab.ui.container.Menu
        ArtilleryEffectMenu           matlab.ui.container.Menu
        AirEffectivenessEffectMenu    matlab.ui.container.Menu
        VulnerabilityEffectMenu       matlab.ui.container.Menu
        AirEqualityMenu               matlab.ui.container.Menu
        MobilityEffectMenu_3          matlab.ui.container.Menu
        ArtilleryEffectMenu_2         matlab.ui.container.Menu
        AirEffectivenessEffectMenu_2  matlab.ui.container.Menu
        VulnerabilityEffectMenu_2     matlab.ui.container.Menu
        AirInferiorityMenu            matlab.ui.container.Menu
        MobilityEffectMenu_4          matlab.ui.container.Menu
        ArtilleryEffectMenu_3         matlab.ui.container.Menu
        AirEffectivenessEffectMenu_3  matlab.ui.container.Menu
        VulnerabilityEffectMenu_3     matlab.ui.container.Menu
        QJMMenu                       matlab.ui.container.Menu
        NonMobileWeaponsMenu          matlab.ui.container.Menu
        MobileWeaponsMenu             matlab.ui.container.Menu
        ScoresMenu                    matlab.ui.container.Menu
        AirComponentMenu              matlab.ui.container.Menu
        LandComponentMenu             matlab.ui.container.Menu
        TankMenu                      matlab.ui.container.Menu
        NavalComponentMenu            matlab.ui.container.Menu
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
         leadership_red_vs_blue=1;
         training_exp_red_vs_blue=1;
         morale_red_vs_blue=1;
         logistic_red_vs_blue=1;
         AirSupMobility_red_vs_blue=1;

%           CurrentSize = 35;           % Surface sample size
%         CurrentColormap = 'Parula'; % Colormap
      
        AirSupArtillery_red_vs_blue=1; % Description
        current_Arty_blue_score=3.5; % Description
        
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
    
    methods (Access = public)
        
        function update_leadership(app,red_vs_blue)
            app.leadership_red_vs_blue=red_vs_blue;
            
            
        end
    end
    
    methods (Access = public)
        
        function update_training_exp(app,training_exp_red_vs_blue)
            app.training_exp_red_vs_blue=training_exp_red_vs_blue;
            
        end
    end
    methods (Access = public)
        
        function update_morale(app,morale_red_vs_blue)
            app.morale_red_vs_blue=morale_red_vs_blue;
            
        end
    end
     methods (Access = public)
        
        function update_logistic(app,logistic_red_vs_blue)
            app.logistic_red_vs_blue=logistic_red_vs_blue;
            
        end
     end
      methods (Access = public)
        
        function update_AirSupMobility(app,AirSupMobility_red_vs_blue)
            app.AirSupMobility_red_vs_blue=AirSupMobility_red_vs_blue;
            
        end
      end
       methods (Access = public)
        
        function update_AirSupArtillery(app,AirSupArtillery_red_vs_blue)
%             app.AirSupArtillery_red_vs_blue=AirSupArtillery_red_vs_blue;
                app.Arty_blue_score.Value=app.Arty_blue_score.Value*AirSupArtillery_red_vs_blue;
            
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, mainapp)
                app.CallingApp=mainapp;
%                 update_AirSupArtillery(app,app.current_Arty_blue_score)
        end

        % Value changed function: REDDropDown
        function REDDropDownValueChanged(app, event)
            value = app.REDDropDown.Value;
            if(strcmp(value,'6th Mechanized Infantry Division'))
                app.RedTankEditField.Value=50;
                app.RedAPCEditField.Value=100;
                app.RedLRAntiarmrEditField.Value=0;
                app.RedSRAntiarmrEditField.Value=100;
                app.RedMortarEditField.Value=1000;
                app.RedArtyEditField.Value=150;
                app.RedHelicopterEditField.Value=10;
                app.RedFighterEditField.Value=20;
                app.RedGroundAttackEditField.Value=20;
                app.RedUAVEditField.Value=10;
                app.RedPersEditField.Value=13000;
                app.red_EqNavalC.Value=0;
                app.TerrainDropDown.Value='Open'
                app.Image.ImageSource='MIDiv.jpg';
             
            end
              if(strcmp(value,'6th Armour Regiment'))
                app.RedTankEditField.Value=45;
                app.RedAPCEditField.Value=10;
                app.RedLRAntiarmrEditField.Value=5;
                app.RedSRAntiarmrEditField.Value=5;
                app.RedMortarEditField.Value=0;
                app.RedArtyEditField.Value=0;
                app.RedHelicopterEditField.Value=0;
                app.RedFighterEditField.Value=0;
                app.RedGroundAttackEditField.Value=0;
                app.RedUAVEditField.Value=0;
                app.RedPersEditField.Value=1200;
                app.red_EqNavalC.Value=0;
                app.TerrainDropDown.Value='Open'
                 app.Image.ImageSource='RedArmourRgt.jpg';
              end
               if(strcmp(value,'17th Infantry Regiment'))
                app.RedTankEditField.Value=0;
                app.RedAPCEditField.Value=50;
                app.RedLRAntiarmrEditField.Value=100;
                app.RedSRAntiarmrEditField.Value=100;
                app.RedMortarEditField.Value=1000;
                app.RedArtyEditField.Value=0;
                app.RedHelicopterEditField.Value=2;
                app.RedFighterEditField.Value=0;
                app.RedGroundAttackEditField.Value=0;
                app.RedUAVEditField.Value=50;
                app.RedPersEditField.Value=2800;
                app.red_EqNavalC.Value=0;
                app.TerrainDropDown.Value='Open'
                  app.Image.ImageSource='17infRgt.jpg';
               end
               if(strcmp(value,'18th Artillery Regiment'))
                app.RedTankEditField.Value=0;
                app.RedAPCEditField.Value=10;
                app.RedLRAntiarmrEditField.Value=100;
                app.RedSRAntiarmrEditField.Value=100;
                app.RedMortarEditField.Value=100;
                app.RedArtyEditField.Value=200;
                app.RedHelicopterEditField.Value=0;
                app.RedFighterEditField.Value=0;
                app.RedGroundAttackEditField.Value=0;
                app.RedUAVEditField.Value=5;
                app.RedPersEditField.Value=1100;
                app.red_EqNavalC.Value=0;
                app.TerrainDropDown.Value='Open'
                  app.Image.ImageSource='18ArtyRgt.jpg';
            end
                if(strcmp(value,'Air Defense Regiment'))
                app.RedTankEditField.Value=5;
                app.RedAPCEditField.Value=10;
                app.RedLRAntiarmrEditField.Value=0;
                app.RedSRAntiarmrEditField.Value=0;
                app.RedMortarEditField.Value=1000;
                app.RedArtyEditField.Value=0;
                app.RedHelicopterEditField.Value=0;
                app.RedFighterEditField.Value=0;
                app.RedGroundAttackEditField.Value=0;
                app.RedUAVEditField.Value=5;
                app.RedPersEditField.Value=1000;
                app.red_EqNavalC.Value=0;
                app.TerrainDropDown.Value='Open'
                app.Image.ImageSource='ADRgt.jpg';
            end
                if(strcmp(value,'Joint Defending Task Group Level1'))
                app.RedTankEditField.Value=30;
                app.RedAPCEditField.Value=300;
                app.RedLRAntiarmrEditField.Value=50;
                app.RedSRAntiarmrEditField.Value=50;
                app.RedMortarEditField.Value=500;
                app.RedArtyEditField.Value=50;
                app.RedHelicopterEditField.Value=10;
                app.RedFighterEditField.Value=8;
                app.RedGroundAttackEditField.Value=10;
                app.RedUAVEditField.Value=5;
                app.RedPersEditField.Value=2000;
                app.red_EqNavalC.Value=0;
                app.TerrainDropDown.Value='Open'
            end

        end

        % Value changed function: TerrainDropDown
        function TerrainDropDownValueChanged(app, event)
            value = app.TerrainDropDown.Value;
            if(strcmp(value,'Open'))
                app.RedTankEditField.Value=app.RedTankEditField.Value;
                app.RedTankEditField.Value=app.RedTankEditField.Value;
                app.RedAPCEditField.Value=app.RedAPCEditField.Value;
                app.RedLRAntiarmrEditField.Value=app.RedLRAntiarmrEditField.Value;
                app.RedSRAntiarmrEditField.Value=app.RedSRAntiarmrEditField.Value;
                app.RedMortarEditField.Value=app.RedMortarEditField.Value;
                app.RedArtyEditField.Value=app.RedArtyEditField.Value;
                app.RedHelicopterEditField.Value=app.RedHelicopterEditField.Value;
                app.RedFighterEditField.Value=app.RedFighterEditField.Value;
                app.RedGroundAttackEditField.Value=app.RedGroundAttackEditField.Value;
                app.RedUAVEditField.Value=app.RedUAVEditField.Value;
                app.RedPersEditField.Value=app.RedPersEditField.Value;

            end
             if(strcmp(value,'Urban'))
                app.RedTankEditField.Value=app.RedTankEditField.Value*.75;
                app.RedTankEditField.Value=app.RedTankEditField.Value*.75;
                app.RedAPCEditField.Value=app.RedAPCEditField.Value*.75;
                app.RedLRAntiarmrEditField.Value=app.RedLRAntiarmrEditField.Value;
                app.RedSRAntiarmrEditField.Value=app.RedSRAntiarmrEditField.Value;
                app.RedMortarEditField.Value=app.RedMortarEditField.Value;
                app.RedArtyEditField.Value=app.RedArtyEditField.Value;
                app.RedHelicopterEditField.Value=app.RedHelicopterEditField.Value*.75;
                app.RedFighterEditField.Value=app.RedFighterEditField.Value;
                app.RedGroundAttackEditField.Value=app.RedGroundAttackEditField.Value;
                app.RedUAVEditField.Value=app.RedUAVEditField.Value;
                app.RedPersEditField.Value=app.RedPersEditField.Value;


             end
              if(strcmp(value,'Rough'))
                app.RedTankEditField.Value=app.RedTankEditField.Value*.5;
                app.RedTankEditField.Value=app.RedTankEditField.Value*.5;
                app.RedAPCEditField.Value=app.RedAPCEditField.Value*.5;
                app.RedLRAntiarmrEditField.Value=app.RedLRAntiarmrEditField.Value;
                app.RedSRAntiarmrEditField.Value=app.RedSRAntiarmrEditField.Value;
                app.RedMortarEditField.Value=app.RedMortarEditField.Value;
                app.RedArtyEditField.Value=app.RedArtyEditField.Value;
                app.RedHelicopterEditField.Value=app.RedHelicopterEditField.Value*.5;
                app.RedFighterEditField.Value=app.RedFighterEditField.Value;
                app.RedGroundAttackEditField.Value=app.RedGroundAttackEditField.Value;
                app.RedUAVEditField.Value=app.RedUAVEditField.Value;
                app.RedPersEditField.Value=app.RedPersEditField.Value;

                
              end
               if(strcmp(value,'Mountain'))
                app.RedTankEditField.Value=app.RedTankEditField.Value*.25;
                app.RedTankEditField.Value=app.RedTankEditField.Value*.25;
                app.RedAPCEditField.Value=app.RedAPCEditField.Value*.25;
                app.RedLRAntiarmrEditField.Value=app.RedLRAntiarmrEditField.Value;
                app.RedSRAntiarmrEditField.Value=app.RedSRAntiarmrEditField.Value;
                app.RedMortarEditField.Value=app.RedMortarEditField.Value;
                app.RedArtyEditField.Value=app.RedArtyEditField.Value;
                app.RedHelicopterEditField.Value=app.RedHelicopterEditField.Value*.25;
                app.RedFighterEditField.Value=app.RedFighterEditField.Value;
                app.RedGroundAttackEditField.Value=app.RedGroundAttackEditField.Value;
                app.RedUAVEditField.Value=app.RedUAVEditField.Value;
                app.RedPersEditField.Value=app.RedPersEditField.Value;

                

             end
        end

        % Value changed function: BLUEDropDown
        function BLUEDropDownValueChanged(app, event)
            value = app.BLUEDropDown.Value;
            




            if(strcmp(value,'T-72 Tank Brigade'))
                app.TankEditField_2.Value=150;
                app.APCEditField_2.Value=50;
                app.LRAntiarmrEditField_3.Value=0;
                app.SRAntiarmrEditField_2.Value=0;
                app.MortarEditField_2.Value=0;
                app.ArtyEditField_2.Value=0;
                app.HelicopterEditField_2.Value=0;
                app.FighterEditField_2.Value=0;
                app.GroundAttackEditField_2.Value=0;
                app.UAVEditField_2.Value=0;
                app.PersEditField_2.Value=3000;
                app.blue_EqNavalC.Value=0;
                app.TerrainDropDown_2.Value='Open'
                app.Image2.ImageSource='T72bgd.jpg'
            end
              if(strcmp(value,'8th Mountain Division'))
                app.TankEditField_2.Value=0;
                app.APCEditField_2.Value=5;
                app.LRAntiarmrEditField_3.Value=1000;
                app.SRAntiarmrEditField_2.Value=1000;
                app.MortarEditField_2.Value=1000;
                app.ArtyEditField_2.Value=0;
                app.HelicopterEditField_2.Value=2;
                app.FighterEditField_2.Value=0;
                app.GroundAttackEditField_2.Value=0;
                app.UAVEditField_2.Value=2;
                app.PersEditField_2.Value=15500;
                app.blue_EqNavalC.Value=0;
                app.TerrainDropDown_2.Value='Open'
                app.Image2.ImageSource='8MountaininfDiv.jpg'
              end
               if(strcmp(value,'3rd Infantry Division'))
                app.TankEditField_2.Value=0;
                app.APCEditField_2.Value=5;
                app.LRAntiarmrEditField_3.Value=800;
                app.SRAntiarmrEditField_2.Value=800;
                app.MortarEditField_2.Value=800;
                app.ArtyEditField_2.Value=0;
                app.HelicopterEditField_2.Value=0;
                app.FighterEditField_2.Value=0;
                app.GroundAttackEditField_2.Value=0;
                app.UAVEditField_2.Value=0;
                app.PersEditField_2.Value=15500;
                app.blue_EqNavalC.Value=0;
                app.TerrainDropDown_2.Value='Open'
                 app.Image2.ImageSource='3InfDiv.jpg'
               end
               if(strcmp(value,'Leh AFS'))
                app.TankEditField_2.Value=350;
                app.APCEditField_2.Value=3300;
                app.LRAntiarmrEditField_3.Value=3100;
                app.SRAntiarmrEditField_2.Value=3100;
                app.MortarEditField_2.Value=310;
                app.ArtyEditField_2.Value=1350;
                app.HelicopterEditField_2.Value=130;
                app.FighterEditField_2.Value=8;
                app.GroundAttackEditField_2.Value=320;
                app.UAVEditField_2.Value=310;
                app.PersEditField_2.Value=13000;
                app.blue_EqNavalC.Value=0;
                app.TerrainDropDown_2.Value='Open'
                 app.Image2.ImageSource='LehAfs.jpg'
            end
                if(strcmp(value,'Joint Attacking Task Group Level3'))
                app.TankEditField_2.Value=50;
                app.APCEditField_2.Value=50;
                app.LRAntiarmrEditField_3.Value=500;
                app.SRAntiarmrEditField_2.Value=500;
                app.MortarEditField_2.Value=500;
                app.ArtyEditField_2.Value=0;
                app.HelicopterEditField_2.Value=25;
                app.FighterEditField_2.Value=20;
                app.GroundAttackEditField_2.Value=20;
                app.UAVEditField_2.Value=20;
                app.PersEditField_2.Value=15000;
                app.blue_EqNavalC.Value=0;
                app.TerrainDropDown_2.Value='Open'
            end
                
        end

        % Value changed function: TerrainDropDown_2
        function TerrainDropDown_2ValueChanged(app, event)
            value = app.TerrainDropDown_2.Value;
            if(strcmp(value,'Open'))
                app.TankEditField_2.Value=app.TankEditField_2.Value;
                app.APCEditField_2.Value=app.APCEditField_2.Value;
                app.LRAntiarmrEditField_3.Value=app.LRAntiarmrEditField_3.Value;
                app.SRAntiarmrEditField_2.Value=app.SRAntiarmrEditField_2.Value;
                app.MortarEditField_2.Value=app.MortarEditField_2.Value;
                app.ArtyEditField_2.Value=app.ArtyEditField_2.Value;
                app.HelicopterEditField_2.Value=app.HelicopterEditField_2.Value;
                app.FighterEditField_2.Value=app.FighterEditField_2.Value;
                app.GroundAttackEditField_2.Value=app.GroundAttackEditField_2.Value;
                app.UAVEditField_2.Value=app.UAVEditField_2.Value;
                app.PersEditField_2.Value=app.PersEditField_2.Value;

            end
             if(strcmp(value,'Urban'))
               app.TankEditField_2.Value=app.TankEditField_2.Value*.75;
                app.APCEditField_2.Value=app.APCEditField_2.Value*.75;
                app.LRAntiarmrEditField_3.Value=app.LRAntiarmrEditField_3.Value*.75;
                app.SRAntiarmrEditField_2.Value=app.SRAntiarmrEditField_2.Value;
                app.MortarEditField_2.Value=app.MortarEditField_2.Value;
                app.ArtyEditField_2.Value=app.ArtyEditField_2.Value;
                app.HelicopterEditField_2.Value=app.HelicopterEditField_2.Value*.75;
                app.FighterEditField_2.Value=app.FighterEditField_2.Value;
                app.GroundAttackEditField_2.Value=app.GroundAttackEditField_2.Value;
                app.UAVEditField_2.Value=app.UAVEditField_2.Value;
                app.PersEditField_2.Value=app.PersEditField_2.Value;


             end
              if(strcmp(value,'Rough'))
                 app.TankEditField_2.Value=app.TankEditField_2.Value*.5;
                app.APCEditField_2.Value=app.APCEditField_2.Value*.5;
                app.LRAntiarmrEditField_3.Value=app.LRAntiarmrEditField_3.Value*.5;
                app.SRAntiarmrEditField_2.Value=app.SRAntiarmrEditField_2.Value;
                app.MortarEditField_2.Value=app.MortarEditField_2.Value;
                app.ArtyEditField_2.Value=app.ArtyEditField_2.Value;
                app.HelicopterEditField_2.Value=app.HelicopterEditField_2.Value*.5;
                app.FighterEditField_2.Value=app.FighterEditField_2.Value;
                app.GroundAttackEditField_2.Value=app.GroundAttackEditField_2.Value;
                app.UAVEditField_2.Value=app.UAVEditField_2.Value;
                app.PersEditField_2.Value=app.PersEditField_2.Value;

                
              end
               if(strcmp(value,'Mountain'))
                app.TankEditField_2.Value=app.TankEditField_2.Value*.25;
                app.APCEditField_2.Value=app.APCEditField_2.Value*.25;
                app.LRAntiarmrEditField_3.Value=app.LRAntiarmrEditField_3.Value*.25;
                app.SRAntiarmrEditField_2.Value=app.SRAntiarmrEditField_2.Value;
                app.MortarEditField_2.Value=app.MortarEditField_2.Value;
                app.ArtyEditField_2.Value=app.ArtyEditField_2.Value;
                app.HelicopterEditField_2.Value=app.HelicopterEditField_2.Value*.25;
                app.FighterEditField_2.Value=app.FighterEditField_2.Value;
                app.GroundAttackEditField_2.Value=app.GroundAttackEditField_2.Value;
                app.UAVEditField_2.Value=app.UAVEditField_2.Value;
                app.PersEditField_2.Value=app.PersEditField_2.Value;


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
                app.GridLayout.RowHeight = {715, 715, 715};
                app.GridLayout.ColumnWidth = {'1x'};
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = 1;
                app.LeftPanel.Layout.Row = 2;
                app.LeftPanel.Layout.Column = 1;
                app.RightPanel.Layout.Row = 3;
                app.RightPanel.Layout.Column = 1;
            elseif (currentFigureWidth > app.onePanelWidth && currentFigureWidth <= app.twoPanelWidth)
                % Change to a 2x2 grid
                app.GridLayout.RowHeight = {715, 715};
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
                app.GridLayout.ColumnWidth = {290, '1x', 518};
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

            app.bb.Value=sum(app.TankEditField_2.Value*app.Tank_blue_score.Value+...
                                                           app.APCEditField_2.Value*app.APC_blue_score.Value+...
                                                           app.LRAntiarmrEditField_3.Value*app.LR_blue_score.Value+...
                                                           app.SRAntiarmrEditField_2.Value*app.SR_blue_score.Value+...
                                                           app.MortarEditField_2.Value*app.Mortar_blue_score.Value+...
                                                           app.ArtyEditField_2.Value*app.Arty_blue_score.Value+...
                                                           app.HelicopterEditField_2.Value*app.Helicopter_blue_score.Value+...
                                                           app.FighterEditField_2.Value*app.Fighter_blue_score.Value+...
                                                           app.GroundAttackEditField_2.Value*app.GroundAttack_blue_score.Value+...
                                                           app.UAVEditField_2.Value*app.UAV_blue_score.Value+...
                                                           app.PersEditField_2.Value*app.Pers_blue_score.Value+...
                                                           app.blue_EqNavalC.Value*app.blue_EqNComp_score.Value)
                         app.bb.Value=app.bb.Value*app.blue_force_strength_multiplier*app.leadership_red_vs_blue*app.training_exp_red_vs_blue*app.morale_red_vs_blue*app.logistic_red_vs_blue*app.AirSupMobility_red_vs_blue;                              
        end

        % Button pushed function: COMPUTEButton
        function COMPUTEButtonPushed2(app, event)
            app.aa.Value=sum(app.RedTankEditField.Value*app.Red_Tank_score.Value+...
                                                           app.RedAPCEditField.Value*app.Red_APC_score.Value+...
                                                           app.RedLRAntiarmrEditField.Value*app.Red_LR_score.Value+...
                                                           app.RedSRAntiarmrEditField.Value*app.Red_SR_score.Value+...
                                                           app.RedMortarEditField.Value*app.Red_Mortar_score.Value+...
                                                           app.RedArtyEditField.Value*app.Red_Arty_score.Value+...
                                                           app.RedHelicopterEditField.Value*app.Red_Helicopter_score.Value+...
                                                           app.RedFighterEditField.Value*app.Red_Fighter_score.Value+...
                                                           app.RedGroundAttackEditField.Value*app.Red_GroundAttack_score.Value+...
                                                           app.RedUAVEditField.Value*app.Red_UAV_score.Value+...
                                                           app.RedPersEditField.Value*app.Red_pers_score.Value+...
                                                           app.red_EqNavalC.Value*app.red_EqNComp_score.Value)
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
         blEq=sum(app.TankEditField_2.Value*app.Tank_blue_score.Value+...
                                                           app.APCEditField_2.Value*app.APC_blue_score.Value+...
                                                           app.LRAntiarmrEditField_3.Value*app.LR_blue_score.Value+...
                                                           app.SRAntiarmrEditField_2.Value*app.SR_blue_score.Value+...
                                                           app.MortarEditField_2.Value*app.Mortar_blue_score.Value+...
                                                           app.ArtyEditField_2.Value*app.Arty_blue_score.Value+...
                                                           app.PersEditField_2.Value*app.Pers_blue_score.Value)...
                                                           /app.Tank_blue_score.Value;
        baEq=sum(app.HelicopterEditField_2.Value*app.Helicopter_blue_score.Value+...
                                                           app.FighterEditField_2.Value*app.Fighter_blue_score.Value+...
                                                           app.GroundAttackEditField_2.Value*app.GroundAttack_blue_score.Value+...
                                                           app.UAVEditField_2.Value*app.UAV_blue_score.Value)...
                                                           /app.Fighter_blue_score.Value;
           bNEq=app.blue_EqNavalC.Value*app.blue_EqNComp_score.Value ;                                      
           bpers= app.PersEditField_2.Value*app.Pers_blue_score.Value;
          
           
           rlEq=sum(app.RedTankEditField.Value*app.Red_Tank_score.Value+...
                                                           app.RedAPCEditField.Value*app.Red_APC_score.Value+...
                                                           app.RedLRAntiarmrEditField.Value*app.Red_LR_score.Value+...
                                                           app.RedSRAntiarmrEditField.Value*app.Red_SR_score.Value+...
                                                           app.RedMortarEditField.Value*app.Red_Mortar_score.Value+...
                                                           app.RedArtyEditField.Value*app.Red_Arty_score.Value+...
                                                           app.RedPersEditField.Value*app.Red_pers_score.Value)...
                                                           /app.Red_Tank_score.Value
            raEq=sum(app.RedHelicopterEditField.Value*app.Red_Helicopter_score.Value+...
                                                           app.RedFighterEditField.Value*app.Red_Fighter_score.Value+...
                                                           app.RedGroundAttackEditField.Value*app.Red_GroundAttack_score.Value+...
                                                           app.RedUAVEditField.Value*app.Red_UAV_score.Value)...
                                                           /app.Red_Helicopter_score.Value
           rNEq=app.red_EqNavalC.Value*app.red_EqNComp_score.Value                                      
           rpers= app.RedPersEditField.Value*app.Red_pers_score.Value;
          
           
           
           
            app.DialogApp = Variable_resolution_model4(app,app.aa.Value,app.Redloss.Value,app.bb.Value,app.Blueloss.Value,app.BattleTimetEditField.Value,baEq,blEq,bNEq,raEq,rlEq,rNEq);
%             app.DialogApp = Variable_resolution_model4(app,app.aa.Value,app.Redloss.Value,app.bb.Value,app.Blueloss.Value,app.BattleTimetEditField.Value,10,20,30);
        end

        % Button pushed function: MapButton
        function MapButtonPushed(app, event)
          if(strcmp(app.PostureDropDown.Value,"Attack") && ~strcmp(app.PostureDropDown_2.Value,"Attack"))
            if(strcmp(app.REDDropDown.Value,'6th Mechanized Infantry Division'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map2(app,'MIDiv.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map2(app,'MIDiv.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map2(app,'MIDiv.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map2(app,'MIDiv.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
                  
               elseif(strcmp(app.REDDropDown.Value,'6th Armour Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map2(app,'RedArmourRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map2(app,'RedArmourRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map2(app,'RedArmourRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map2(app,'RedArmourRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end  
                    
            elseif(strcmp(app.REDDropDown.Value,'17th Infantry Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map2(app,'17InfRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map2(app,'17InfRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map2(app,'17InfRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map2(app,'17InfRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
            elseif(strcmp(app.REDDropDown.Value,'18th Artillery Regiment'))
                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map2(app,'18ArtyRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map2(app,'18ArtyRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map2(app,'18ArtyRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map2(app,'18ArtyRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
                end
            elseif(strcmp(app.REDDropDown.Value,'Air Defense Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map2(app,'ADRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map2(app,'ADRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map2(app,'ADRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map2(app,'ADRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
            else
                app.DialogApp=scenario_map1(); 
            end
          elseif(~strcmp(app.PostureDropDown.Value,"Attack") && strcmp(app.PostureDropDown_2.Value,"Attack"))
               if(strcmp(app.REDDropDown.Value,'6th Mechanized Infantry Division'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map3(app,'MIDiv.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map3(app,'MIDiv.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map3(app,'MIDiv.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map3(app,'MIDiv.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
                  
               elseif(strcmp(app.REDDropDown.Value,'6th Armour Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map3(app,'RedArmourRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map3(app,'RedArmourRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map3(app,'RedArmourRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map3(app,'RedArmourRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end  
                    
            elseif(strcmp(app.REDDropDown.Value,'17th Infantry Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map3(app,'17InfRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map3(app,'17InfRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map3(app,'17InfRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map3(app,'17InfRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
            elseif(strcmp(app.REDDropDown.Value,'18th Artillery Regiment'))
                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map3(app,'18ArtyRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map3(app,'18ArtyRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map3(app,'18ArtyRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map3(app,'18ArtyRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
                end
            elseif(strcmp(app.REDDropDown.Value,'Air Defense Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map3(app,'ADRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map3(app,'ADRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map3(app,'ADRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map3(app,'ADRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
            else
                app.DialogApp=scenario_map1(); 
               end
          elseif(~strcmp(app.PostureDropDown.Value,"Attack") &&  ~strcmp(app.PostureDropDown_2.Value,"Attack"))
              if(strcmp(app.REDDropDown.Value,'6th Mechanized Infantry Division'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map4(app,'MIDiv.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map4(app,'MIDiv.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map4(app,'MIDiv.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map4(app,'MIDiv.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
                  
               elseif(strcmp(app.REDDropDown.Value,'6th Armour Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map4(app,'RedArmourRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map4(app,'RedArmourRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map4(app,'RedArmourRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map4(app,'RedArmourRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end  
                    
            elseif(strcmp(app.REDDropDown.Value,'17th Infantry Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map4(app,'17InfRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map4(app,'17InfRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map4(app,'17InfRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map4(app,'17InfRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
            elseif(strcmp(app.REDDropDown.Value,'18th Artillery Regiment'))
                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map4(app,'18ArtyRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map4(app,'18ArtyRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map4(app,'18ArtyRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map4(app,'18ArtyRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
                end
            elseif(strcmp(app.REDDropDown.Value,'Air Defense Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map4(app,'ADRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map4(app,'ADRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map4(app,'ADRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map4(app,'ADRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
            else
                app.DialogApp=scenario_map1(); 
              end
          elseif(strcmp(app.PostureDropDown.Value,"Attack") &&  strcmp(app.PostureDropDown_2.Value,"Attack"))
              if(strcmp(app.REDDropDown.Value,'6th Mechanized Infantry Division'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map5(app,'MIDiv.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map5(app,'MIDiv.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map5(app,'MIDiv.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map5(app,'MIDiv.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
                  
               elseif(strcmp(app.REDDropDown.Value,'6th Armour Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map5(app,'RedArmourRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map5(app,'RedArmourRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map5(app,'RedArmourRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map5(app,'RedArmourRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end  
                    
            elseif(strcmp(app.REDDropDown.Value,'17th Infantry Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map5(app,'17InfRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map5(app,'17InfRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map5(app,'17InfRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map5(app,'17InfRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
            elseif(strcmp(app.REDDropDown.Value,'18th Artillery Regiment'))
                if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map5(app,'18ArtyRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map5(app,'18ArtyRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map5(app,'18ArtyRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map5(app,'18ArtyRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
                end
            elseif(strcmp(app.REDDropDown.Value,'Air Defense Regiment'))
               if(strcmp(app.BLUEDropDown.Value,'T-72 Tank Brigade'))
                    app.DialogApp=scenario_map5(app,'ADRgt.jpg','T72Bgd.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'8th Mountain Division'))
                    app.DialogApp=scenario_map5(app,'ADRgt.jpg','8MountainInfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);
               elseif(strcmp(app.BLUEDropDown.Value,'3rd Infantry Division'))
                    app.DialogApp=scenario_map5(app,'ADRgt.jpg','3InfDiv.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               elseif(strcmp(app.BLUEDropDown.Value,'Leh AFS'))
                    app.DialogApp=scenario_map5(app,'ADRgt.jpg','LehAfs.jpg',app.BattleTimetEditField.Value,app.Redloss.Value,app.Blueloss.Value);    
               else
                     app.DialogApp=scenario_map1();    
               end
            else
                app.DialogApp=scenario_map1(); 
            end
          end
        end

        % Menu selected function: AttackPostureMenu
        function AttackPostureMenuSelected(app, event)
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

        % Menu selected function: LeadershipMenu
        function LeadershipMenuSelected(app, event)
            app.DialogApp=leadership(app);
        end

        % Menu selected function: TrainingExperiencesMenu
        function TrainingExperiencesMenuSelected(app, event)
            app.DialogApp=training_exp(app);
        end

        % Menu selected function: MoraleMenu
        function MoraleMenuSelected(app, event)
            app.DialogApp=morale(app)
        end

        % Menu selected function: LogisticMenu
        function LogisticMenuSelected(app, event)
            app.DialogApp=logistic(app)
        end

        % Menu selected function: MobilityEffectMenu_2
        function MobilityEffectMenu_2Selected(app, event)
            app.DialogApp=AirSupMobility(app);
        end

        % Menu selected function: ArtilleryEffectMenu
        function ArtilleryEffectMenuSelected(app, event)
%            app.Arty_blue_score.Value=app.Arty_blue_score.Value*app.AirSupArtillery_red_vs_blue;
%             app.Arty_blue_score.Value=app.AirSupArtillery_red_vs_blue;
            app.DialogApp=AirSupArtillery(app);
        end

        % Menu selected function: NonMobileWeaponsMenu
        function NonMobileWeaponsMenuSelected(app, event)
            app.DialogApp=QJM_nonmobile(app);
        end

        % Menu selected function: MobileWeaponsMenu
        function MobileWeaponsMenuSelected(app, event)
            app.DialogApp=QJM_mobile(app)
        end

        % Menu selected function: TankMenu
        function TankMenuSelected(app, event)
            app.DialogApp=score_tank_dropdown(app);
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
              app.DialogApp=weather_effect(app)
        end

        % Menu selected function: ArtilleryMenu
        function ArtilleryMenuSelected(app, event)
              app.DialogApp=weather_effect(app)
        end

        % Menu selected function: AirMenu
        function AirMenuSelected(app, event)
              app.DialogApp=weather_effect(app)
        end

        % Menu selected function: TanksMenu
        function TanksMenuSelected(app, event)
              app.DialogApp=weather_effect(app)
        end

        % Menu selected function: AirEffectivenessEffectMenu
        function AirEffectivenessEffectMenuSelected(app, event)
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create CombatPotentialComputationUIFigure and hide until all components are created
            app.CombatPotentialComputationUIFigure = uifigure('Visible', 'off');
            app.CombatPotentialComputationUIFigure.AutoResizeChildren = 'off';
            app.CombatPotentialComputationUIFigure.Position = [100 100 1092 715];
            app.CombatPotentialComputationUIFigure.Name = 'Combat Potential Computation';
            app.CombatPotentialComputationUIFigure.CloseRequestFcn = createCallbackFcn(app, @CombatPotentialComputationUIFigureCloseRequest, true);
            app.CombatPotentialComputationUIFigure.SizeChangedFcn = createCallbackFcn(app, @updateAppLayout, true);

            % Create GridLayout
            app.GridLayout = uigridlayout(app.CombatPotentialComputationUIFigure);
            app.GridLayout.ColumnWidth = {290, '1x', 518};
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
            app.REDDropDownLabel.Position = [6 683 41 22];
            app.REDDropDownLabel.Text = 'RED';

            % Create REDDropDown
            app.REDDropDown = uidropdown(app.LeftPanel);
            app.REDDropDown.Items = {'6th Mechanized Infantry Division', '6th Armour Regiment', '17th Infantry Regiment', '18th Artillery Regiment', 'Air Defense Regiment', 'Joint Defending Task Group Level1'};
            app.REDDropDown.ValueChangedFcn = createCallbackFcn(app, @REDDropDownValueChanged, true);
            app.REDDropDown.FontWeight = 'bold';
            app.REDDropDown.Position = [62 683 224 22];
            app.REDDropDown.Value = '6th Mechanized Infantry Division';

            % Create TankEditFieldLabel
            app.TankEditFieldLabel = uilabel(app.LeftPanel);
            app.TankEditFieldLabel.HorizontalAlignment = 'right';
            app.TankEditFieldLabel.Position = [28 544 31 22];
            app.TankEditFieldLabel.Text = 'Tank';

            % Create RedTankEditField
            app.RedTankEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedTankEditField.Position = [119 547 53 22];
            app.RedTankEditField.Value = 50;

            % Create APCEditFieldLabel
            app.APCEditFieldLabel = uilabel(app.LeftPanel);
            app.APCEditFieldLabel.HorizontalAlignment = 'right';
            app.APCEditFieldLabel.Position = [28 513 30 22];
            app.APCEditFieldLabel.Text = 'APC';

            % Create RedAPCEditField
            app.RedAPCEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedAPCEditField.Position = [119 516 53 22];
            app.RedAPCEditField.Value = 100;

            % Create LRAntiarmrEditFieldLabel
            app.LRAntiarmrEditFieldLabel = uilabel(app.LeftPanel);
            app.LRAntiarmrEditFieldLabel.HorizontalAlignment = 'right';
            app.LRAntiarmrEditFieldLabel.Position = [28 481 73 22];
            app.LRAntiarmrEditFieldLabel.Text = 'LR Anti armr';

            % Create RedLRAntiarmrEditField
            app.RedLRAntiarmrEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedLRAntiarmrEditField.Position = [119 484 53 22];

            % Create SRAntiarmrEditFieldLabel
            app.SRAntiarmrEditFieldLabel = uilabel(app.LeftPanel);
            app.SRAntiarmrEditFieldLabel.HorizontalAlignment = 'right';
            app.SRAntiarmrEditFieldLabel.Position = [28 450 74 22];
            app.SRAntiarmrEditFieldLabel.Text = 'SR Anti armr';

            % Create RedSRAntiarmrEditField
            app.RedSRAntiarmrEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedSRAntiarmrEditField.Position = [119 453 53 22];
            app.RedSRAntiarmrEditField.Value = 100;

            % Create MortarEditFieldLabel
            app.MortarEditFieldLabel = uilabel(app.LeftPanel);
            app.MortarEditFieldLabel.HorizontalAlignment = 'right';
            app.MortarEditFieldLabel.Position = [28 420 40 22];
            app.MortarEditFieldLabel.Text = 'Mortar';

            % Create RedMortarEditField
            app.RedMortarEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedMortarEditField.Position = [119 423 53 22];
            app.RedMortarEditField.Value = 1000;

            % Create ArtyEditFieldLabel
            app.ArtyEditFieldLabel = uilabel(app.LeftPanel);
            app.ArtyEditFieldLabel.HorizontalAlignment = 'right';
            app.ArtyEditFieldLabel.Position = [28 390 27 22];
            app.ArtyEditFieldLabel.Text = 'Arty';

            % Create RedArtyEditField
            app.RedArtyEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedArtyEditField.Position = [119 393 53 22];
            app.RedArtyEditField.Value = 150;

            % Create HelicopterEditFieldLabel
            app.HelicopterEditFieldLabel = uilabel(app.LeftPanel);
            app.HelicopterEditFieldLabel.HorizontalAlignment = 'right';
            app.HelicopterEditFieldLabel.Position = [28 360 59 22];
            app.HelicopterEditFieldLabel.Text = 'Helicopter';

            % Create RedHelicopterEditField
            app.RedHelicopterEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedHelicopterEditField.Position = [119 363 53 22];
            app.RedHelicopterEditField.Value = 10;

            % Create FighterEditFieldLabel
            app.FighterEditFieldLabel = uilabel(app.LeftPanel);
            app.FighterEditFieldLabel.HorizontalAlignment = 'right';
            app.FighterEditFieldLabel.Position = [28 330 43 22];
            app.FighterEditFieldLabel.Text = 'Fighter';

            % Create RedFighterEditField
            app.RedFighterEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedFighterEditField.Position = [119 333 53 22];
            app.RedFighterEditField.Value = 20;

            % Create GroundAttackEditFieldLabel
            app.GroundAttackEditFieldLabel = uilabel(app.LeftPanel);
            app.GroundAttackEditFieldLabel.HorizontalAlignment = 'right';
            app.GroundAttackEditFieldLabel.Position = [28 300 82 22];
            app.GroundAttackEditFieldLabel.Text = 'Ground Attack';

            % Create RedGroundAttackEditField
            app.RedGroundAttackEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedGroundAttackEditField.Position = [119 303 53 22];
            app.RedGroundAttackEditField.Value = 20;

            % Create UAVEditFieldLabel
            app.UAVEditFieldLabel = uilabel(app.LeftPanel);
            app.UAVEditFieldLabel.HorizontalAlignment = 'right';
            app.UAVEditFieldLabel.Position = [28 269 29 22];
            app.UAVEditFieldLabel.Text = 'UAV';

            % Create RedUAVEditField
            app.RedUAVEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedUAVEditField.Position = [119 272 53 22];
            app.RedUAVEditField.Value = 10;

            % Create Red_Tank_score
            app.Red_Tank_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Tank_score.Position = [198 547 53 22];
            app.Red_Tank_score.Value = 4;

            % Create Red_APC_score
            app.Red_APC_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_APC_score.Position = [198 516 53 22];
            app.Red_APC_score.Value = 1;

            % Create Red_LR_score
            app.Red_LR_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_LR_score.Position = [198 484 53 22];
            app.Red_LR_score.Value = 1;

            % Create Red_SR_score
            app.Red_SR_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_SR_score.Position = [198 453 53 22];
            app.Red_SR_score.Value = 0.25;

            % Create Red_Mortar_score
            app.Red_Mortar_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Mortar_score.Position = [198 423 53 22];
            app.Red_Mortar_score.Value = 0.15;

            % Create Red_Arty_score
            app.Red_Arty_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Arty_score.Position = [198 393 53 22];
            app.Red_Arty_score.Value = 2.5;

            % Create Red_Helicopter_score
            app.Red_Helicopter_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Helicopter_score.Position = [198 363 53 22];
            app.Red_Helicopter_score.Value = 2.5;

            % Create Red_Fighter_score
            app.Red_Fighter_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_Fighter_score.Position = [198 333 53 22];
            app.Red_Fighter_score.Value = 5;

            % Create Red_GroundAttack_score
            app.Red_GroundAttack_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_GroundAttack_score.Position = [198 303 53 22];
            app.Red_GroundAttack_score.Value = 3;

            % Create Red_UAV_score
            app.Red_UAV_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_UAV_score.Position = [198 272 53 22];
            app.Red_UAV_score.Value = 1;

            % Create Red_pers_score
            app.Red_pers_score = uieditfield(app.LeftPanel, 'numeric');
            app.Red_pers_score.Position = [198 241 53 22];
            app.Red_pers_score.Value = 1;

            % Create PersEditFieldLabel
            app.PersEditFieldLabel = uilabel(app.LeftPanel);
            app.PersEditFieldLabel.HorizontalAlignment = 'right';
            app.PersEditFieldLabel.Position = [28 238 30 22];
            app.PersEditFieldLabel.Text = 'Pers';

            % Create RedPersEditField
            app.RedPersEditField = uieditfield(app.LeftPanel, 'numeric');
            app.RedPersEditField.ValueDisplayFormat = '%.0f';
            app.RedPersEditField.Position = [119 241 53 22];
            app.RedPersEditField.Value = 13000;

            % Create TotalCombatPotentialLabel
            app.TotalCombatPotentialLabel = uilabel(app.LeftPanel);
            app.TotalCombatPotentialLabel.HorizontalAlignment = 'right';
            app.TotalCombatPotentialLabel.Position = [24 101 127 22];
            app.TotalCombatPotentialLabel.Text = 'Total Combat Potential';

            % Create aa
            app.aa = uieditfield(app.LeftPanel, 'numeric');
            app.aa.ValueDisplayFormat = '%.2f';
            app.aa.Position = [166 101 100 22];

            % Create COMPUTEButton
            app.COMPUTEButton = uibutton(app.LeftPanel, 'push');
            app.COMPUTEButton.ButtonPushedFcn = createCallbackFcn(app, @COMPUTEButtonPushed2, true);
            app.COMPUTEButton.BackgroundColor = [1 0 0];
            app.COMPUTEButton.Position = [109 156 100 22];
            app.COMPUTEButton.Text = 'COMPUTE';

            % Create TerrainDropDownLabel
            app.TerrainDropDownLabel = uilabel(app.LeftPanel);
            app.TerrainDropDownLabel.HorizontalAlignment = 'right';
            app.TerrainDropDownLabel.Position = [79 615 42 22];
            app.TerrainDropDownLabel.Text = 'Terrain';

            % Create TerrainDropDown
            app.TerrainDropDown = uidropdown(app.LeftPanel);
            app.TerrainDropDown.Items = {'Open', 'Urban', 'Rough', 'Mountain'};
            app.TerrainDropDown.ValueChangedFcn = createCallbackFcn(app, @TerrainDropDownValueChanged, true);
            app.TerrainDropDown.Position = [133 618 90 22];
            app.TerrainDropDown.Value = 'Open';

            % Create red_EqNComp_score
            app.red_EqNComp_score = uieditfield(app.LeftPanel, 'numeric');
            app.red_EqNComp_score.Position = [197 203 53 22];
            app.red_EqNComp_score.Value = 5;

            % Create EqNavalCompoLabel
            app.EqNavalCompoLabel = uilabel(app.LeftPanel);
            app.EqNavalCompoLabel.HorizontalAlignment = 'right';
            app.EqNavalCompoLabel.Position = [9 202 96 22];
            app.EqNavalCompoLabel.Text = 'Eq Naval Compo';

            % Create red_EqNavalC
            app.red_EqNavalC = uieditfield(app.LeftPanel, 'numeric');
            app.red_EqNavalC.ValueDisplayFormat = '%.0f';
            app.red_EqNavalC.Position = [118 203 53 22];

            % Create Image
            app.Image = uiimage(app.LeftPanel);
            app.Image.Position = [101 17 100 68];
            app.Image.ImageSource = 'MIDiv.jpg';

            % Create PostureDropDownLabel
            app.PostureDropDownLabel = uilabel(app.LeftPanel);
            app.PostureDropDownLabel.BackgroundColor = [1 0 0];
            app.PostureDropDownLabel.HorizontalAlignment = 'center';
            app.PostureDropDownLabel.FontColor = [1 1 1];
            app.PostureDropDownLabel.Position = [58 649 51 22];
            app.PostureDropDownLabel.Text = ' Posture';

            % Create PostureDropDown
            app.PostureDropDown = uidropdown(app.LeftPanel);
            app.PostureDropDown.Items = {'Attack', 'Defence (Hasty)', 'Defence (Prepared)', 'Defence (Fortified)', 'Withdrawal', 'Delay'};
            app.PostureDropDown.ValueChangedFcn = createCallbackFcn(app, @PostureDropDownValueChanged, true);
            app.PostureDropDown.FontColor = [1 1 1];
            app.PostureDropDown.BackgroundColor = [1 0 0];
            app.PostureDropDown.Position = [122 649 157 22];
            app.PostureDropDown.Value = 'Attack';

            % Create DropDown
            app.DropDown = uidropdown(app.LeftPanel);
            app.DropDown.Items = {'Scores', 'OLI'};
            app.DropDown.Position = [189 582 71 22];
            app.DropDown.Value = 'Scores';

            % Create QntLabel
            app.QntLabel = uilabel(app.LeftPanel);
            app.QntLabel.Position = [137 582 28 22];
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
            app.BLUEDropDownLabel.Position = [15 683 38 22];
            app.BLUEDropDownLabel.Text = 'BLUE';

            % Create BLUEDropDown
            app.BLUEDropDown = uidropdown(app.CenterPanel);
            app.BLUEDropDown.Items = {'T-72 Tank Brigade', '8th Mountain Division', '3rd Infantry Division', 'Leh AFS', 'Joint Attacking Task Group Level3'};
            app.BLUEDropDown.ValueChangedFcn = createCallbackFcn(app, @BLUEDropDownValueChanged, true);
            app.BLUEDropDown.Position = [68 683 199 22];
            app.BLUEDropDown.Value = 'T-72 Tank Brigade';

            % Create TankEditField_2Label
            app.TankEditField_2Label = uilabel(app.CenterPanel);
            app.TankEditField_2Label.HorizontalAlignment = 'right';
            app.TankEditField_2Label.Position = [14 546 31 22];
            app.TankEditField_2Label.Text = 'Tank';

            % Create TankEditField_2
            app.TankEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.TankEditField_2.Position = [114 544 53 22];
            app.TankEditField_2.Value = 150;

            % Create APCEditField_2Label
            app.APCEditField_2Label = uilabel(app.CenterPanel);
            app.APCEditField_2Label.HorizontalAlignment = 'right';
            app.APCEditField_2Label.Position = [14 514 30 22];
            app.APCEditField_2Label.Text = 'APC';

            % Create APCEditField_2
            app.APCEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.APCEditField_2.Position = [114 514 53 22];
            app.APCEditField_2.Value = 50;

            % Create LRAntiarmrEditField_3Label
            app.LRAntiarmrEditField_3Label = uilabel(app.CenterPanel);
            app.LRAntiarmrEditField_3Label.HorizontalAlignment = 'right';
            app.LRAntiarmrEditField_3Label.Position = [14 483 73 22];
            app.LRAntiarmrEditField_3Label.Text = 'LR Anti armr';

            % Create LRAntiarmrEditField_3
            app.LRAntiarmrEditField_3 = uieditfield(app.CenterPanel, 'numeric');
            app.LRAntiarmrEditField_3.Position = [114 483 53 22];

            % Create SRAntiarmrEditField_2Label
            app.SRAntiarmrEditField_2Label = uilabel(app.CenterPanel);
            app.SRAntiarmrEditField_2Label.HorizontalAlignment = 'right';
            app.SRAntiarmrEditField_2Label.Position = [14 452 74 22];
            app.SRAntiarmrEditField_2Label.Text = 'SR Anti armr';

            % Create SRAntiarmrEditField_2
            app.SRAntiarmrEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.SRAntiarmrEditField_2.Position = [114 452 53 22];

            % Create MortarEditField_2Label
            app.MortarEditField_2Label = uilabel(app.CenterPanel);
            app.MortarEditField_2Label.HorizontalAlignment = 'right';
            app.MortarEditField_2Label.Position = [14 421 40 22];
            app.MortarEditField_2Label.Text = 'Mortar';

            % Create MortarEditField_2
            app.MortarEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.MortarEditField_2.Position = [114 421 53 22];

            % Create ArtyEditField_2Label
            app.ArtyEditField_2Label = uilabel(app.CenterPanel);
            app.ArtyEditField_2Label.HorizontalAlignment = 'right';
            app.ArtyEditField_2Label.Position = [14 390 27 22];
            app.ArtyEditField_2Label.Text = 'Arty';

            % Create ArtyEditField_2
            app.ArtyEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.ArtyEditField_2.Position = [114 390 53 22];

            % Create TerrainDropDown_2Label
            app.TerrainDropDown_2Label = uilabel(app.CenterPanel);
            app.TerrainDropDown_2Label.HorizontalAlignment = 'right';
            app.TerrainDropDown_2Label.Position = [73 616 42 22];
            app.TerrainDropDown_2Label.Text = 'Terrain';

            % Create TerrainDropDown_2
            app.TerrainDropDown_2 = uidropdown(app.CenterPanel);
            app.TerrainDropDown_2.Items = {'Open', 'Urban', 'Rough', 'Mountain'};
            app.TerrainDropDown_2.ValueChangedFcn = createCallbackFcn(app, @TerrainDropDown_2ValueChanged, true);
            app.TerrainDropDown_2.Position = [130 616 90 22];
            app.TerrainDropDown_2.Value = 'Open';

            % Create Tank_blue_score
            app.Tank_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Tank_blue_score.Position = [194 544 53 22];
            app.Tank_blue_score.Value = 5;

            % Create APC_blue_score
            app.APC_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.APC_blue_score.Position = [194 513 53 22];
            app.APC_blue_score.Value = 1;

            % Create LR_blue_score
            app.LR_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.LR_blue_score.Position = [194 482 53 22];
            app.LR_blue_score.Value = 1.2;

            % Create SR_blue_score
            app.SR_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.SR_blue_score.Position = [194 451 53 22];
            app.SR_blue_score.Value = 3;

            % Create Mortar_blue_score
            app.Mortar_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Mortar_blue_score.Position = [194 420 53 22];
            app.Mortar_blue_score.Value = 0.18;

            % Create Arty_blue_score
            app.Arty_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Arty_blue_score.ValueDisplayFormat = '%.3f';
            app.Arty_blue_score.Position = [194 389 53 22];
            app.Arty_blue_score.Value = 3.5;

            % Create TotalCombatPotentialLabel_2
            app.TotalCombatPotentialLabel_2 = uilabel(app.CenterPanel);
            app.TotalCombatPotentialLabel_2.HorizontalAlignment = 'right';
            app.TotalCombatPotentialLabel_2.Position = [7 101 127 22];
            app.TotalCombatPotentialLabel_2.Text = 'Total Combat Potential';

            % Create COMPUTEButton_2
            app.COMPUTEButton_2 = uibutton(app.CenterPanel, 'push');
            app.COMPUTEButton_2.ButtonPushedFcn = createCallbackFcn(app, @COMPUTEButton_2Pushed, true);
            app.COMPUTEButton_2.BackgroundColor = [0.0745 0.6235 1];
            app.COMPUTEButton_2.Position = [118 156 100 22];
            app.COMPUTEButton_2.Text = 'COMPUTE';

            % Create HelicopterEditField_2Label
            app.HelicopterEditField_2Label = uilabel(app.CenterPanel);
            app.HelicopterEditField_2Label.HorizontalAlignment = 'right';
            app.HelicopterEditField_2Label.Position = [14 359 59 22];
            app.HelicopterEditField_2Label.Text = 'Helicopter';

            % Create HelicopterEditField_2
            app.HelicopterEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.HelicopterEditField_2.Position = [114 359 53 22];

            % Create FighterEditField_2Label
            app.FighterEditField_2Label = uilabel(app.CenterPanel);
            app.FighterEditField_2Label.HorizontalAlignment = 'right';
            app.FighterEditField_2Label.Position = [14 328 43 22];
            app.FighterEditField_2Label.Text = 'Fighter';

            % Create FighterEditField_2
            app.FighterEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.FighterEditField_2.Position = [114 328 53 22];

            % Create GroundAttackEditField_2Label
            app.GroundAttackEditField_2Label = uilabel(app.CenterPanel);
            app.GroundAttackEditField_2Label.HorizontalAlignment = 'right';
            app.GroundAttackEditField_2Label.Position = [14 298 82 22];
            app.GroundAttackEditField_2Label.Text = 'Ground Attack';

            % Create GroundAttackEditField_2
            app.GroundAttackEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.GroundAttackEditField_2.Position = [114 298 53 22];

            % Create UAVEditField_2Label
            app.UAVEditField_2Label = uilabel(app.CenterPanel);
            app.UAVEditField_2Label.HorizontalAlignment = 'right';
            app.UAVEditField_2Label.Position = [14 268 29 22];
            app.UAVEditField_2Label.Text = 'UAV';

            % Create UAVEditField_2
            app.UAVEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.UAVEditField_2.Position = [114 268 53 22];

            % Create PersEditField_2Label
            app.PersEditField_2Label = uilabel(app.CenterPanel);
            app.PersEditField_2Label.HorizontalAlignment = 'right';
            app.PersEditField_2Label.Position = [14 238 30 22];
            app.PersEditField_2Label.Text = 'Pers';

            % Create PersEditField_2
            app.PersEditField_2 = uieditfield(app.CenterPanel, 'numeric');
            app.PersEditField_2.ValueDisplayFormat = '%.0f';
            app.PersEditField_2.Position = [114 238 53 22];
            app.PersEditField_2.Value = 3000;

            % Create Helicopter_blue_score
            app.Helicopter_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Helicopter_blue_score.Position = [194 358 53 22];
            app.Helicopter_blue_score.Value = 2.8;

            % Create Fighter_blue_score
            app.Fighter_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Fighter_blue_score.Position = [194 327 53 22];
            app.Fighter_blue_score.Value = 6;

            % Create GroundAttack_blue_score
            app.GroundAttack_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.GroundAttack_blue_score.Position = [194 297 53 22];
            app.GroundAttack_blue_score.Value = 3.2;

            % Create UAV_blue_score
            app.UAV_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.UAV_blue_score.Position = [194 267 53 22];
            app.UAV_blue_score.Value = 1;

            % Create Pers_blue_score
            app.Pers_blue_score = uieditfield(app.CenterPanel, 'numeric');
            app.Pers_blue_score.Position = [194 237 53 22];
            app.Pers_blue_score.Value = 1;

            % Create bb
            app.bb = uieditfield(app.CenterPanel, 'numeric');
            app.bb.ValueDisplayFormat = '%.2f';
            app.bb.Position = [166 101 100 22];

            % Create blue_EqNComp_score
            app.blue_EqNComp_score = uieditfield(app.CenterPanel, 'numeric');
            app.blue_EqNComp_score.Position = [195 202 53 22];
            app.blue_EqNComp_score.Value = 5;

            % Create EqNavalCompoLabel_2
            app.EqNavalCompoLabel_2 = uilabel(app.CenterPanel);
            app.EqNavalCompoLabel_2.HorizontalAlignment = 'right';
            app.EqNavalCompoLabel_2.Position = [7 201 96 22];
            app.EqNavalCompoLabel_2.Text = 'Eq Naval Compo';

            % Create blue_EqNavalC
            app.blue_EqNavalC = uieditfield(app.CenterPanel, 'numeric');
            app.blue_EqNavalC.ValueDisplayFormat = '%.0f';
            app.blue_EqNavalC.Position = [116 202 53 22];

            % Create Image2
            app.Image2 = uiimage(app.CenterPanel);
            app.Image2.Position = [116 17 91 73];
            app.Image2.ImageSource = 'T72Bgd.jpg';

            % Create PostureDropDown_2Label
            app.PostureDropDown_2Label = uilabel(app.CenterPanel);
            app.PostureDropDown_2Label.BackgroundColor = [0 0.4471 0.7412];
            app.PostureDropDown_2Label.HorizontalAlignment = 'center';
            app.PostureDropDown_2Label.FontColor = [1 1 1];
            app.PostureDropDown_2Label.Position = [28 649 56 22];
            app.PostureDropDown_2Label.Text = ' Posture';

            % Create PostureDropDown_2
            app.PostureDropDown_2 = uidropdown(app.CenterPanel);
            app.PostureDropDown_2.Items = {'Attack', 'Defence (Hasty)', 'Defence (Prepared)', 'Defence (Fortified)', 'Withdrawal', 'Delay'};
            app.PostureDropDown_2.ValueChangedFcn = createCallbackFcn(app, @PostureDropDown_2ValueChanged, true);
            app.PostureDropDown_2.FontColor = [1 1 1];
            app.PostureDropDown_2.BackgroundColor = [0 0.4471 0.7412];
            app.PostureDropDown_2.Position = [97 649 157 22];
            app.PostureDropDown_2.Value = 'Attack';

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.CenterPanel);
            app.DropDown_2.Items = {'Scores', 'OLI'};
            app.DropDown_2.Position = [181 582 81 22];
            app.DropDown_2.Value = 'Scores';

            % Create QntLabel_2
            app.QntLabel_2 = uilabel(app.CenterPanel);
            app.QntLabel_2.Position = [127 582 28 22];
            app.QntLabel_2.Text = 'Qnt.';

            % Create RightPanel
            app.RightPanel = uipanel(app.GridLayout);
            app.RightPanel.Layout.Row = 1;
            app.RightPanel.Layout.Column = 3;

            % Create DefenderUIAxes
            app.DefenderUIAxes = uiaxes(app.RightPanel);
            title(app.DefenderUIAxes, 'Red verses Blue')
            xlabel(app.DefenderUIAxes, 'time(in min)')
            ylabel(app.DefenderUIAxes, 'Combat Power  ')
            app.DefenderUIAxes.PlotBoxAspectRatio = [1.02586206896552 1 1];
            app.DefenderUIAxes.FontSize = 8;
            app.DefenderUIAxes.XTick = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60];
            app.DefenderUIAxes.XTickLabel = {'1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9'; '10'; '11'; '12'; '13'; '14'; '15'; '16'; '17'; '18'; '19'; '20'; '21'; '22'; '23'; '24'; '25'; '26'; '27'; '28'; '29'; '30'; '31'; '32'; '33'; '34'; '35'; '36'; '37'; '38'; '39'; '40'; '41'; '42'; '43'; '44'; '45'; '46'; '47'; '48'; '49'; '50'; '51'; '52'; '53'; '54'; '55'; '56'; '57'; '58'; '59'; '60'};
            app.DefenderUIAxes.Position = [26 376 221 222];

            % Create AttackerUIAxes
            app.AttackerUIAxes = uiaxes(app.RightPanel);
            title(app.AttackerUIAxes, 'Force Ratio')
            xlabel(app.AttackerUIAxes, 'Time (in Min)')
            ylabel(app.AttackerUIAxes, 'Force Ratio (RED/BLUE)')
            app.AttackerUIAxes.PlotBoxAspectRatio = [1.02586206896552 1 1];
            app.AttackerUIAxes.FontSize = 8;
            app.AttackerUIAxes.XTick = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50];
            app.AttackerUIAxes.XTickLabel = {'1'; '2'; '3'; '4'; '5'; '6'; '1'; '8'; '9'; '10'; '11'; '12'; '13'; '14'; '15'; '16'; '17'; '18'; '19'; '20'; '21'; '22'; '23'; '24'; '25'; '26'; '27'; '28'; '29'; '30'; '31'; '32'; '33'; '34'; '35'; '36'; '37'; '38'; '39'; '40'; '41'; '42'; '43'; '44'; '45'; '46'; '47'; '48'; '49'; '50'};
            app.AttackerUIAxes.Position = [259 382 221 222];

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
            app.fig3UIAxes.Position = [26 165 221 222];

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
            app.fig4UIAxes.Position = [261 163 221 222];

            % Create Label
            app.Label = uilabel(app.RightPanel);
            app.Label.FontSize = 8;
            app.Label.FontColor = [0 0 1];
            app.Label.Position = [82 1 385 22];
            app.Label.Text = '[Referance]:The strategic Postures of China and India, Frank O''Donnell and Alex Bollfrass, HARVARD Kennedy School, BELFER CENTER for Science and International Affairs, March 2020.';

            % Create ForceRatioREDBLUEButton
            app.ForceRatioREDBLUEButton = uibutton(app.RightPanel, 'push');
            app.ForceRatioREDBLUEButton.ButtonPushedFcn = createCallbackFcn(app, @ForceRatioREDBLUEButtonPushed, true);
            app.ForceRatioREDBLUEButton.Position = [86 683 173 22];
            app.ForceRatioREDBLUEButton.Text = 'Force Ratio   (RED/BLUE)   =';

            % Create FR
            app.FR = uieditfield(app.RightPanel, 'numeric');
            app.FR.Position = [294 683 100 22];

            % Create ComputeAttritionRatesButton
            app.ComputeAttritionRatesButton = uibutton(app.RightPanel, 'push');
            app.ComputeAttritionRatesButton.ButtonPushedFcn = createCallbackFcn(app, @ComputeAttritionRatesButtonPushed, true);
            app.ComputeAttritionRatesButton.Position = [195 138 143 22];
            app.ComputeAttritionRatesButton.Text = 'Compute Attrition Rates';

            % Create outputA
            app.outputA = uieditfield(app.RightPanel, 'numeric');
            app.outputA.ValueDisplayFormat = '%7.5f';
            app.outputA.Editable = 'off';
            app.outputA.Position = [161 101 100 22];

            % Create outputB
            app.outputB = uieditfield(app.RightPanel, 'numeric');
            app.outputB.ValueDisplayFormat = '%7.5f';
            app.outputB.Editable = 'off';
            app.outputB.Position = [162 68 100 22];

            % Create A
            app.A = uilabel(app.RightPanel);
            app.A.HorizontalAlignment = 'right';
            app.A.FontColor = [0.851 0.3255 0.098];
            app.A.Position = [26 100 123 23];
            app.A.Text = 'RED Attrition Rate (A)';

            % Create B
            app.B = uilabel(app.RightPanel);
            app.B.HorizontalAlignment = 'right';
            app.B.FontColor = [0 0.4471 0.7412];
            app.B.Position = [20 67 129 23];
            app.B.Text = 'BLUE Attrition Rate (B)';

            % Create BattleTimetEditFieldLabel
            app.BattleTimetEditFieldLabel = uilabel(app.RightPanel);
            app.BattleTimetEditFieldLabel.HorizontalAlignment = 'right';
            app.BattleTimetEditFieldLabel.FontWeight = 'bold';
            app.BattleTimetEditFieldLabel.FontColor = [0.0745 0.6235 1];
            app.BattleTimetEditFieldLabel.Position = [159 649 85 22];
            app.BattleTimetEditFieldLabel.Text = 'Battle Time (t)';

            % Create BattleTimetEditField
            app.BattleTimetEditField = uieditfield(app.RightPanel, 'numeric');
            app.BattleTimetEditField.Limits = [0 150];
            app.BattleTimetEditField.ValueDisplayFormat = '%.0f';
            app.BattleTimetEditField.Position = [259 652 87 22];
            app.BattleTimetEditField.Value = 14;

            % Create RedLossEditFieldLabel
            app.RedLossEditFieldLabel = uilabel(app.RightPanel);
            app.RedLossEditFieldLabel.BackgroundColor = [1 0 0];
            app.RedLossEditFieldLabel.HorizontalAlignment = 'center';
            app.RedLossEditFieldLabel.Position = [90 618 56 22];
            app.RedLossEditFieldLabel.Text = 'Red Loss';

            % Create Redloss
            app.Redloss = uieditfield(app.RightPanel, 'numeric');
            app.Redloss.Position = [161 618 35 22];
            app.Redloss.Value = 90;

            % Create BlueLossEditFieldLabel
            app.BlueLossEditFieldLabel = uilabel(app.RightPanel);
            app.BlueLossEditFieldLabel.BackgroundColor = [0 0 1];
            app.BlueLossEditFieldLabel.HorizontalAlignment = 'center';
            app.BlueLossEditFieldLabel.FontColor = [1 1 1];
            app.BlueLossEditFieldLabel.Position = [284 617 62 22];
            app.BlueLossEditFieldLabel.Text = 'Blue Loss';

            % Create Blueloss
            app.Blueloss = uieditfield(app.RightPanel, 'numeric');
            app.Blueloss.Position = [353 617 41 22];
            app.Blueloss.Value = 10;

            % Create Label_2
            app.Label_2 = uilabel(app.RightPanel);
            app.Label_2.Position = [204 618 25 22];
            app.Label_2.Text = '%';

            % Create Label_3
            app.Label_3 = uilabel(app.RightPanel);
            app.Label_3.Position = [412 617 25 22];
            app.Label_3.Text = '%';

            % Create AnalysisButton
            app.AnalysisButton = uibutton(app.RightPanel, 'push');
            app.AnalysisButton.ButtonPushedFcn = createCallbackFcn(app, @AnalysisButtonPushed, true);
            app.AnalysisButton.Position = [225 32 100 22];
            app.AnalysisButton.Text = 'Analysis';

            % Create MapButton
            app.MapButton = uibutton(app.RightPanel, 'push');
            app.MapButton.ButtonPushedFcn = createCallbackFcn(app, @MapButtonPushed, true);
            app.MapButton.Position = [370 32 43 22];
            app.MapButton.Text = 'Map';

            % Create ABLabel
            app.ABLabel = uilabel(app.RightPanel);
            app.ABLabel.HorizontalAlignment = 'right';
            app.ABLabel.Position = [311 100 56 22];
            app.ABLabel.Text = 'A/B  =';

            % Create ABRatio
            app.ABRatio = uieditfield(app.RightPanel, 'numeric');
            app.ABRatio.Position = [382 100 100 22];

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

            % Create TanksMenu
            app.TanksMenu = uimenu(app.WeatherMenu);
            app.TanksMenu.MenuSelectedFcn = createCallbackFcn(app, @TanksMenuSelected, true);
            app.TanksMenu.Text = 'Tanks';

            % Create IntangibleFactorsMenu
            app.IntangibleFactorsMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.IntangibleFactorsMenu.Text = 'Intangible Factors';

            % Create CombatEffectivenessMenu
            app.CombatEffectivenessMenu = uimenu(app.IntangibleFactorsMenu);
            app.CombatEffectivenessMenu.Text = 'Combat Effectiveness';

            % Create LeadershipMenu
            app.LeadershipMenu = uimenu(app.CombatEffectivenessMenu);
            app.LeadershipMenu.MenuSelectedFcn = createCallbackFcn(app, @LeadershipMenuSelected, true);
            app.LeadershipMenu.Text = 'Leadership';

            % Create TrainingExperiencesMenu
            app.TrainingExperiencesMenu = uimenu(app.CombatEffectivenessMenu);
            app.TrainingExperiencesMenu.MenuSelectedFcn = createCallbackFcn(app, @TrainingExperiencesMenuSelected, true);
            app.TrainingExperiencesMenu.Text = 'Training Experiences';

            % Create MoraleMenu
            app.MoraleMenu = uimenu(app.CombatEffectivenessMenu);
            app.MoraleMenu.MenuSelectedFcn = createCallbackFcn(app, @MoraleMenuSelected, true);
            app.MoraleMenu.Text = 'Morale';

            % Create LogisticMenu
            app.LogisticMenu = uimenu(app.CombatEffectivenessMenu);
            app.LogisticMenu.MenuSelectedFcn = createCallbackFcn(app, @LogisticMenuSelected, true);
            app.LogisticMenu.Text = 'Logistic';

            % Create TimesMenu
            app.TimesMenu = uimenu(app.CombatEffectivenessMenu);
            app.TimesMenu.Text = 'Times';

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

            % Create AirSuperiorityFactorMenu
            app.AirSuperiorityFactorMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.AirSuperiorityFactorMenu.ForegroundColor = [0 1 0];
            app.AirSuperiorityFactorMenu.Text = 'Air Superiority Factor';

            % Create AirSuperiorityMenu
            app.AirSuperiorityMenu = uimenu(app.AirSuperiorityFactorMenu);
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
            app.AirEffectivenessEffectMenu.MenuSelectedFcn = createCallbackFcn(app, @AirEffectivenessEffectMenuSelected, true);
            app.AirEffectivenessEffectMenu.Text = 'Air Effectiveness Effect';

            % Create VulnerabilityEffectMenu
            app.VulnerabilityEffectMenu = uimenu(app.AirSuperiorityMenu);
            app.VulnerabilityEffectMenu.Text = 'Vulnerability Effect';

            % Create AirEqualityMenu
            app.AirEqualityMenu = uimenu(app.AirSuperiorityFactorMenu);
            app.AirEqualityMenu.Text = 'Air Equality';

            % Create MobilityEffectMenu_3
            app.MobilityEffectMenu_3 = uimenu(app.AirEqualityMenu);
            app.MobilityEffectMenu_3.Text = 'Mobility Effect';

            % Create ArtilleryEffectMenu_2
            app.ArtilleryEffectMenu_2 = uimenu(app.AirEqualityMenu);
            app.ArtilleryEffectMenu_2.Text = 'Artillery Effect';

            % Create AirEffectivenessEffectMenu_2
            app.AirEffectivenessEffectMenu_2 = uimenu(app.AirEqualityMenu);
            app.AirEffectivenessEffectMenu_2.Text = 'Air Effectiveness Effect';

            % Create VulnerabilityEffectMenu_2
            app.VulnerabilityEffectMenu_2 = uimenu(app.AirEqualityMenu);
            app.VulnerabilityEffectMenu_2.Text = 'Vulnerability   Effect';

            % Create AirInferiorityMenu
            app.AirInferiorityMenu = uimenu(app.AirSuperiorityFactorMenu);
            app.AirInferiorityMenu.Text = 'Air Inferiority';

            % Create MobilityEffectMenu_4
            app.MobilityEffectMenu_4 = uimenu(app.AirInferiorityMenu);
            app.MobilityEffectMenu_4.Text = 'Mobility Effect';

            % Create ArtilleryEffectMenu_3
            app.ArtilleryEffectMenu_3 = uimenu(app.AirInferiorityMenu);
            app.ArtilleryEffectMenu_3.Text = 'Artillery Effect';

            % Create AirEffectivenessEffectMenu_3
            app.AirEffectivenessEffectMenu_3 = uimenu(app.AirInferiorityMenu);
            app.AirEffectivenessEffectMenu_3.Text = 'Air Effectiveness Effect';

            % Create VulnerabilityEffectMenu_3
            app.VulnerabilityEffectMenu_3 = uimenu(app.AirInferiorityMenu);
            app.VulnerabilityEffectMenu_3.Text = 'Vulnerability Effect';

            % Create QJMMenu
            app.QJMMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.QJMMenu.Text = 'QJM';

            % Create NonMobileWeaponsMenu
            app.NonMobileWeaponsMenu = uimenu(app.QJMMenu);
            app.NonMobileWeaponsMenu.MenuSelectedFcn = createCallbackFcn(app, @NonMobileWeaponsMenuSelected, true);
            app.NonMobileWeaponsMenu.Text = 'Non-Mobile Weapons';

            % Create MobileWeaponsMenu
            app.MobileWeaponsMenu = uimenu(app.QJMMenu);
            app.MobileWeaponsMenu.MenuSelectedFcn = createCallbackFcn(app, @MobileWeaponsMenuSelected, true);
            app.MobileWeaponsMenu.Text = 'Mobile Weapons';

            % Create ScoresMenu
            app.ScoresMenu = uimenu(app.CombatPotentialComputationUIFigure);
            app.ScoresMenu.ForegroundColor = [1 0.0745 0.651];
            app.ScoresMenu.Text = 'Scores';

            % Create AirComponentMenu
            app.AirComponentMenu = uimenu(app.ScoresMenu);
            app.AirComponentMenu.Text = 'Air Component';

            % Create LandComponentMenu
            app.LandComponentMenu = uimenu(app.ScoresMenu);
            app.LandComponentMenu.Text = 'Land Component';

            % Create TankMenu
            app.TankMenu = uimenu(app.LandComponentMenu);
            app.TankMenu.MenuSelectedFcn = createCallbackFcn(app, @TankMenuSelected, true);
            app.TankMenu.Text = 'Tank';

            % Create NavalComponentMenu
            app.NavalComponentMenu = uimenu(app.ScoresMenu);
            app.NavalComponentMenu.Text = 'Naval Component';

            % Show the figure after all components are created
            app.CombatPotentialComputationUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Combat_Potential_Forces_3p3_exported(varargin)

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