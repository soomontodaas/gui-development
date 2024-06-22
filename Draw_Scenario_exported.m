classdef Draw_Scenario_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        DeployREDButton                matlab.ui.control.Button
        DeployBLUEButton               matlab.ui.control.Button
        DrawLineButton                 matlab.ui.control.Button
        MOVEARTYDIVButton              matlab.ui.control.Button
        AIMPOINTButton_2               matlab.ui.control.Button
        INFVsINFButton                 matlab.ui.control.Button
        ARTYSUPPORTTOTHESCENARIOLabel  matlab.ui.control.Label
        NavalTaskForceButton           matlab.ui.control.Button
        DrawNavalScenarioButton        matlab.ui.control.Button
        AmphibiousOperationButton      matlab.ui.control.Button
    end

    
    properties (Access = public)
        CallingApp; % Description
        gx; % Description
       Image;
       DialogApp;
         k;
         K=0;
         Hq_x;
         Hq_y;
         b_c_mean_Lat=0;
         b_c_mean_Lon=0;
         r_c_mean_Lat=0;
         r_c_mean_Lon=0;
         b_Ac_mean_Lat=0;   %% aircraft mean location   6 o'clock a 9:34 (USE bLDNG, k,b y) NOT FOR tOMORROW, DONT KNOW WHO IS ON LEAVE
         b_Ac_mean_Lon=0; 
         r_Ac_mean_Lat=0;   %% aircraft mean location   6 o'clock a 9:34 (USE bLDNG, k,b y) NOT FOR tOMORROW, DONT KNOW WHO IS ON LEAVE
         r_Ac_mean_Lon=0; 
    end
    
    properties (Access = private)
        Move_id % Description
%         Property9 % Description
        Property9 % Description
        Property12 % Description
        Property15 % Description
        Property18 % Description
    end
    
    properties (Access = public)
        perc % Description
         % Description
    end
    
    methods (Access = public)
        
        function update_id(app,x)
            app.Move_id=x;
            
        end
    end
    methods (Access = public)
        
        function update_no_of_div(app,x)
            disp("************* K value")
            app.K=x
        end
    end
    
  
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, mainapp)
            app.CallingApp=mainapp;  
%             plot(app.UIAxes,10,10,'rs')
%             hold on
%             app.Image.ImageSource = 'INS.jpg';
%             app.Image.Position=[28,72, 10,10];
        end

        % Button pushed function: MOVEARTYDIVButton
        function MOVEARTYDIVButtonPushed(app, event)
% %% ************************************************
% %%              ARTY MOVEMENT
% %%*************************************************
%             
% %             [x,y]=ginput(1);
% %             plot(x,y,"MarkerFaceColor","r.")
            app.gx=geoaxes;
            latSeattle = 5.62;
            lonSeattle = 65.33;
            latAnchorage = 35.20;
            lonAnchorage = 97.9;
            geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
%           geoplot(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage],'Color',[1 1 1])
            geobasemap(app.gx,"satellite");
            hold on
% %             temp1=[];
%             for i=1:1:2
%               temp =[   29.8026   76.5162
%                         25.2466   72.8451];
%             Div_lat=temp(i,1);
%             Div_lon=temp(i,2);
% %              temp=[temp;[Div_lat,Div_lon]];
% %             name="Div"+i;
% %             a=imread('INS.jpg');
% %             image(a,[Div_lat,Div_lon, 10,10]);
% %             hold on
%             geoscatter(Div_lat,Div_lon,100,'filled','square',"MarkerFaceColor","blue");
%             text(Div_lat,Div_lon,'  Arty Div')
% %             gtext("Arty Div"+i,'Color','blue','FontSize',10)
%             hold on
%             end
% %            temp
%             for j=1:1:5
%                    temp=[33.6184   74.7623
%                        30.9987   74.8031
%                        28.7709   73.8241
%                        27.7650   72.0293
%                        26.5310   70.5609];
%             Inf_Div_lat=temp(j,1);
%             Inf_Div_lon=temp(j,2);
% %                temp=[temp;[Inf_Div_lat,Inf_Div_lon]];
%             geoscatter(Inf_Div_lat,Inf_Div_lon,100,'filled',"square","MarkerFaceColor","cyan","MarkerEdgeColor","black");
%             text(Inf_Div_lat,Inf_Div_lon,'  Inf Div')
% %             gtext("Inf Div"+j,'Color','blue','FontSize',10)
%             hold on
%             end
%             
%             
%               
%             for k=1:1:5
%                  temp =[   31.9034   75.0478
%                            30.3673   74.2728
%                            29.4835   73.2530
%                            28.5203   72.6820
%                            27.2585   71.3767];
% 
%             Arm_Div_lat=temp(k,1);
%             Arm_Div_lon=temp(k,2);
% %             [Arm_Div_lat,Arm_Div_lon]=ginput(1);
% %                temp1=[temp1;[Arm_Div_lat,Arm_Div_lon]];
%             geoscatter(Arm_Div_lat,Arm_Div_lon,100,'filled',"square","MarkerFaceColor","green","MarkerEdgeColor","black");
%             text(Arm_Div_lat,Arm_Div_lon,'  Arm Div')
% %             gtext("Inf Div"+j,'Color','blue','FontSize',10)
%             hold on
%             end
%             temp1=[];
%             
%             for k=1:1:1
%                  temp =[   30.7887   73.5794];
% %  31.2083   73.0491
% 
%             Red_Arm_Div_lat=temp(k,1);
%             Red_Arm_Div_lon=temp(k,2);
% %             [Red_Arm_Div_lat,Red_Arm_Div_lon]=ginput(1);
% %             temp1=[temp1;[Red_Arm_Div_lat,Red_Arm_Div_lon]];
%             geoscatter(Red_Arm_Div_lat,Red_Arm_Div_lon,100,'filled',"square","MarkerFaceColor","red","MarkerEdgeColor","black");
%             text(Red_Arm_Div_lat,Red_Arm_Div_lon,'  Arm Div')
% %             gtext("Inf Div"+j,'Color','blue','FontSize',10)
%             hold on
%             end
%             temp1
%             
%              for k=1:1:1
%                  temp =[   31.2083   73.0491];
% 
% 
%             Red_Inf_Div_lat=temp(k,1);
%             Red_Inf_Div_lon=temp(k,2);
% %             [Red_Arm_Div_lat,Red_Arm_Div_lon]=ginput(1);
% %             temp1=[temp1;[Red_Arm_Div_lat,Red_Arm_Div_lon]];
%             geoscatter(Red_Inf_Div_lat,Red_Inf_Div_lon,100,'filled',"square","MarkerFaceColor","magenta","MarkerEdgeColor","black");
%             text(Red_Inf_Div_lat,Red_Inf_Div_lon,'  Inf Div')
% %             gtext("Inf Div"+j,'Color','blue','FontSize',10)
%             hold on
%             end
%             
%             
%             
%             
%             [Bat_lat,Bat_lon]=ginput(1);
%             geoscatter(Bat_lat,Bat_lon,100,'filled','^');
%             gtext('Arty Bat','Color','blue','FontSize',10)
%             hold on
%             
%             [lat,lon] = ginput(1);
%             hold on
%            
%              geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%             geoscatter(lat,lon,'filled','b')
%               gtext('Aim Point','Color','red','FontSize',10)
% %             tx = txsite('Name','Bat Loc','Latitude',Bat_lat,'Longitude',Bat_lon);
% %             rx = rxsite('Name','Aim Point','Latitude',lat,'Longitude',lon);
% %             dme = distance(tx,rx);
% %             gtext(strcat('Distance:',dme),'Color','blue','FontSize',10)
% %             hold on
% %             dim = [ .5 .5 .01 .01];
% %             annotation('rectangle',dim,'Color','red')
%             geoplot([Bat_lat lat],[Bat_lon lon],'g-*')
%             earthRadiusInMeters = 6371000;
%             distInMeters = distance(Bat_lat, Bat_lon,lat, lon, earthRadiusInMeters)
%             distInKilometers = distInMeters/1000;
% 
%             % arclen = distance('gc',[Bat_lat, Bat_lon],[lat,lon])
%              gtext("Distance:"+distInKilometers+"km",'Color','black','FontSize',10)
%              hold on
%             for i=1:1:30
%                 shots_x=(lat-0.1)+0.2*rand();
%                 shots_y=(lon-0.1)+0.2*rand();
%                 hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
% %                 geoscatter(shots_x,shots_y,'filled','r')
%                 geoplot(app.gx,shots_x,shots_y,'r.')
%                 hold on
%             end
%             geoplot([Red_Arm_Div_lat lat],[Red_Arm_Div_lon lon],'r-*')
%             hold on
%             temp=[];
%             Red_Arm_Div_lat_initial=Red_Arm_Div_lat;
%             Red_Arm_Div_lon_initial=Red_Arm_Div_lon;
%            for i=1:1:30
%                dist_mult_lat=(lat-Red_Arm_Div_lat_initial)/30
%                dist_mult_lon=(lon-Red_Arm_Div_lon_initial)/30
%                temp=[temp;dist_mult_lat];
%                Red_Arm_Div_lat=Red_Arm_Div_lat+dist_mult_lat;
%                Red_Arm_Div_lon= Red_Arm_Div_lon+dist_mult_lon;
%                 geoscatter(Red_Arm_Div_lat,Red_Arm_Div_lon,100,'filled',"square","MarkerFaceColor","red","MarkerEdgeColor","black");
% %                geoplot(app.gx,Red_Arm_Div_lat,Red_Arm_Div_lon,'rs')
%                geoplot([Red_Arm_Div_lat lat],[Red_Arm_Div_lon lon],'r-*')
% %                hold on
%                pause(1);
%            end
%           temp
            
 %%  *************************************
 %%            API1.mlapp
 %% **************************************
 load('resources.mat');
for i=1:1:200
    if(s(i).side==1)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'bo','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[0 0 1]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'bs','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"Arm Div");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1]);
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'b*','MarkerFaceColor','blue','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"Arty Div")
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'g^','MarkerFaceColor','green','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",3,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        end
        
    elseif(s(i).side==2)
        if(s(i).type==1)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'ro','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[1 0 0]);
         drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==2)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'rs','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arm Div");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[1 0 0]);
            hold on   
        elseif(s(i).type==3)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arty Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[1 0 0]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'y^','MarkerFaceColor','yellow','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base")  ;
        end
    end
end
[x,y]=ginput(1);
d1=(x-s(118).Lat)/30;
d2=(y-s(118).Lon)/30;
theta=rad2deg(atan(d2/d1));

 geoplot([s(118).Lat x],[s(118).Lon y],'g-*');
            earthRadiusInMeters = 6371000;
            distInMeters = distance(s(118).Lat, s(118).Lon,x,y,earthRadiusInMeters);
            distInKilometers = distInMeters/1000;

            % arclen = distance('gc',[Bat_lat, Bat_lon],[lat,lon])
             gtext("Distance:"+distInKilometers+"km",'Color','black','FontSize',10);
             hold on
time_required=round(distInKilometers/30); % @30 km /hour
for j=1:1:time_required
    for i=1:1:200
    if(s(i).side==1)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'bo','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[0 0 1]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'bs','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"Arm Div");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1]);
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'b*','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"Arty Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1],"RotationAngle",theta);
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on  
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'g^','MarkerFaceColor','green','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",3,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        end
        
    elseif(s(i).side==2)
        if(s(i).type==1)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'ro','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[1 0 0]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==2)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'rs','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arm Div");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[1 0 0]);
            hold on   
        elseif(s(i).type==3)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arty Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[1 0 0]);
            hold on 
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'y^','MarkerFaceColor','yellow','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base")  ;
        end
    end
end
   
% h.X=s(118).Lat;
% h.Y=s(118).Lon;
s(118).Lat=s(118).Lat+d1;
    s(118).Lon=s(118).Lon+d2;
% refreshdata
% drawnow
pause(1)

%             h=plot(app.gx,s(118).Lat,s(118).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black');
%             h1=text(app.gx,s(118).Lat,s(118).Lon,"  Arty Div")
%             h2=drawcircle(app.gx,"Center",[s(118).Lat,s(118).Lon],"Radius",1,"Color",[0 0 1]);
%             h3=  drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1],"RotationAngle",theta)

            hold on
%   cla(h)
if(j==time_required)
    break;
end
%   cla
  
end
% drawcircle(app.gx,"Center",[s(117).Lat,s(117).Lon],"Radius",10);
%% ************************************************
%%              ARTY SUPPORT
%%*************************************************
%             
% %             [x,y]=ginput(1);
% %             plot(x,y,"MarkerFaceColor","r.")
%             app.gx=geoaxes;
%             latSeattle = 5.62;
%             lonSeattle = 65.33;
%             latAnchorage = 35.20;
%             lonAnchorage = 97.9;
%              geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%             geoplot(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage],'Color',[1 1 1])
%             geobasemap(app.gx,"grayland");
%             hold on
% %             temp1=[];
%             for i=1:1:2
%               temp =[   29.8026   76.5162
%                         25.2466   72.8451];
%             Div_lat=temp(i,1);
%             Div_lon=temp(i,2);
% %              temp=[temp;[Div_lat,Div_lon]];
% %             name="Div"+i;
% %             a=imread('INS.jpg');
% %             image(a,[Div_lat,Div_lon, 10,10]);
% %             hold on
%             geoscatter(Div_lat,Div_lon,100,'filled','square',"MarkerFaceColor","blue");
%             text(Div_lat,Div_lon,'  Arty Div')
% %             gtext("Arty Div"+i,'Color','blue','FontSize',10)
%             hold on
%             end
% %            temp
%             for j=1:1:5
%                    temp=[33.6184   74.7623
%                        30.9987   74.8031
%                        28.7709   73.8241
%                        27.7650   72.0293
%                        26.5310   70.5609];
%             Inf_Div_lat=temp(j,1);
%             Inf_Div_lon=temp(j,2);
% %                temp=[temp;[Inf_Div_lat,Inf_Div_lon]];
%             geoscatter(Inf_Div_lat,Inf_Div_lon,100,'filled',"square","MarkerFaceColor","cyan","MarkerEdgeColor","black");
%             text(Inf_Div_lat,Inf_Div_lon,'  Inf Div')
% %             gtext("Inf Div"+j,'Color','blue','FontSize',10)
%             hold on
%             end
%             
%             
%               
%             for k=1:1:5
%                  temp =[   31.9034   75.0478
%                            30.3673   74.2728
%                            29.4835   73.2530
%                            28.5203   72.6820
%                            27.2585   71.3767];
% 
%             Arm_Div_lat=temp(k,1);
%             Arm_Div_lon=temp(k,2);
% %             [Arm_Div_lat,Arm_Div_lon]=ginput(1);
% %                temp1=[temp1;[Arm_Div_lat,Arm_Div_lon]];
%             geoscatter(Arm_Div_lat,Arm_Div_lon,100,'filled',"square","MarkerFaceColor","green","MarkerEdgeColor","black");
%             text(Arm_Div_lat,Arm_Div_lon,'  Arm Div')
% %             gtext("Inf Div"+j,'Color','blue','FontSize',10)
%             hold on
%             end
%             temp1=[];
%             
%             for k=1:1:1
%                  temp =[   30.7887   73.5794];
% %  31.2083   73.0491
% 
%             Red_Arm_Div_lat=temp(k,1);
%             Red_Arm_Div_lon=temp(k,2);
% %             [Red_Arm_Div_lat,Red_Arm_Div_lon]=ginput(1);
% %             temp1=[temp1;[Red_Arm_Div_lat,Red_Arm_Div_lon]];
%             geoscatter(Red_Arm_Div_lat,Red_Arm_Div_lon,100,'filled',"square","MarkerFaceColor","red","MarkerEdgeColor","black");
%             text(Red_Arm_Div_lat,Red_Arm_Div_lon,'  Arm Div')
% %             gtext("Inf Div"+j,'Color','blue','FontSize',10)
%             hold on
%             end
%             temp1
%             
%              for k=1:1:1
%                  temp =[   31.2083   73.0491];
% 
% 
%             Red_Inf_Div_lat=temp(k,1);
%             Red_Inf_Div_lon=temp(k,2);
% %             [Red_Arm_Div_lat,Red_Arm_Div_lon]=ginput(1);
% %             temp1=[temp1;[Red_Arm_Div_lat,Red_Arm_Div_lon]];
%             geoscatter(Red_Inf_Div_lat,Red_Inf_Div_lon,100,'filled',"square","MarkerFaceColor","magenta","MarkerEdgeColor","black");
%             text(Red_Inf_Div_lat,Red_Inf_Div_lon,'  Inf Div')
% %             gtext("Inf Div"+j,'Color','blue','FontSize',10)
%             hold on
%             end
%             
%             
%             
%             
%             [Bat_lat,Bat_lon]=ginput(1);
%             geoscatter(Bat_lat,Bat_lon,100,'filled','^');
%             gtext('Arty Bat','Color','blue','FontSize',10)
%             hold on
%             
%             [lat,lon] = ginput(1);
%             hold on
%            
%              geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%             geoscatter(lat,lon,'filled','b')
%               gtext('Aim Point','Color','red','FontSize',10)
% %             tx = txsite('Name','Bat Loc','Latitude',Bat_lat,'Longitude',Bat_lon);
% %             rx = rxsite('Name','Aim Point','Latitude',lat,'Longitude',lon);
% %             dme = distance(tx,rx);
% %             gtext(strcat('Distance:',dme),'Color','blue','FontSize',10)
% %             hold on
% %             dim = [ .5 .5 .01 .01];
% %             annotation('rectangle',dim,'Color','red')
%             geoplot([Bat_lat lat],[Bat_lon lon],'g-*')
%             earthRadiusInMeters = 6371000;
%             distInMeters = distance(Bat_lat, Bat_lon,lat, lon, earthRadiusInMeters)
%             distInKilometers = distInMeters/1000;
% 
%             % arclen = distance('gc',[Bat_lat, Bat_lon],[lat,lon])
%              gtext("Distance:"+distInKilometers+"km",'Color','black','FontSize',10)
%              hold on
%             for i=1:1:30
%                 shots_x=(lat-0.1)+0.2*rand();
%                 shots_y=(lon-0.1)+0.2*rand();
%                 hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
% %                 geoscatter(shots_x,shots_y,'filled','r')
%                 geoplot(app.gx,shots_x,shots_y,'r.')
%                 hold on
%             end
%             geoplot([Red_Arm_Div_lat lat],[Red_Arm_Div_lon lon],'r-*')
%             hold on
%             temp=[];
%             Red_Arm_Div_lat_initial=Red_Arm_Div_lat;
%             Red_Arm_Div_lon_initial=Red_Arm_Div_lon;
%            for i=1:1:30
%                dist_mult_lat=(lat-Red_Arm_Div_lat_initial)/30
%                dist_mult_lon=(lon-Red_Arm_Div_lon_initial)/30
%                temp=[temp;dist_mult_lat];
%                Red_Arm_Div_lat=Red_Arm_Div_lat+dist_mult_lat;
%                Red_Arm_Div_lon= Red_Arm_Div_lon+dist_mult_lon;
%                 geoscatter(Red_Arm_Div_lat,Red_Arm_Div_lon,100,'filled',"square","MarkerFaceColor","red","MarkerEdgeColor","black");
% %                geoplot(app.gx,Red_Arm_Div_lat,Red_Arm_Div_lon,'rs')
%                geoplot([Red_Arm_Div_lat lat],[Red_Arm_Div_lon lon],'r-*')
% %                hold on
%                pause(1);
%            end
%           temp
            
        end

        % Button pushed function: AIMPOINTButton_2
        function AIMPOINTButton_2Pushed(app, event)
            % %% ************************************************
% %%              ARTY SUPPORT
% %%*************************************************
            
%             [x,y]=ginput(1);
%             plot(x,y,"MarkerFaceColor","r.")
            app.gx=geoaxes;
            latSeattle = 5.62;
            lonSeattle = 65.33;
            latAnchorage = 35.20;
            lonAnchorage = 97.9;
             geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
            geoplot(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage],'Color',[1 1 1])
            geobasemap(app.gx,"satellite");
            hold on
%             temp1=[];
            for i=1:1:2
              temp =[   29.8026   76.5162
                        25.2466   72.8451];
            Div_lat=temp(i,1);
            Div_lon=temp(i,2);
%              temp=[temp;[Div_lat,Div_lon]];
%             name="Div"+i;
%             a=imread('INS.jpg');
%             image(a,[Div_lat,Div_lon, 10,10]);
%             hold on
            geoscatter(Div_lat,Div_lon,100,'filled','square',"MarkerFaceColor","blue");
            text(Div_lat,Div_lon,'  Arty Div')
%             gtext("Arty Div"+i,'Color','blue','FontSize',10)
            hold on
            end
%            temp
            for j=1:1:5
                   temp=[33.6184   74.7623
                       30.9987   74.8031
                       28.7709   73.8241
                       27.7650   72.0293
                       26.5310   70.5609];
            Inf_Div_lat=temp(j,1);
            Inf_Div_lon=temp(j,2);
%                temp=[temp;[Inf_Div_lat,Inf_Div_lon]];
            geoscatter(Inf_Div_lat,Inf_Div_lon,100,'filled',"square","MarkerFaceColor","cyan","MarkerEdgeColor","black");
            text(Inf_Div_lat,Inf_Div_lon,'  Inf Div')
%             gtext("Inf Div"+j,'Color','blue','FontSize',10)
            hold on
            end
            
            
              
            for k=1:1:5
                 temp =[   31.9034   75.0478
                           30.3673   74.2728
                           29.4835   73.2530
                           28.5203   72.6820
                           27.2585   71.3767];

            Arm_Div_lat=temp(k,1);
            Arm_Div_lon=temp(k,2);
%             [Arm_Div_lat,Arm_Div_lon]=ginput(1);
%                temp1=[temp1;[Arm_Div_lat,Arm_Div_lon]];
            geoscatter(Arm_Div_lat,Arm_Div_lon,100,'filled',"square","MarkerFaceColor","green","MarkerEdgeColor","black");
            text(Arm_Div_lat,Arm_Div_lon,'  Arm Div')
%             gtext("Inf Div"+j,'Color','blue','FontSize',10)
            hold on
            end
            temp1=[];
            
            for k=1:1:1
                 temp =[   30.7887   73.5794];
%  31.2083   73.0491

            Red_Arm_Div_lat=temp(k,1);
            Red_Arm_Div_lon=temp(k,2);
%             [Red_Arm_Div_lat,Red_Arm_Div_lon]=ginput(1);
%             temp1=[temp1;[Red_Arm_Div_lat,Red_Arm_Div_lon]];
            geoscatter(Red_Arm_Div_lat,Red_Arm_Div_lon,100,'filled',"square","MarkerFaceColor","red","MarkerEdgeColor","black");
            text(Red_Arm_Div_lat,Red_Arm_Div_lon,'  Arm Div')
%             gtext("Inf Div"+j,'Color','blue','FontSize',10)
            hold on
            end
            temp1
            
             for k=1:1:1
                 temp =[   31.2083   73.0491];


            Red_Inf_Div_lat=temp(k,1);
            Red_Inf_Div_lon=temp(k,2);
%             [Red_Arm_Div_lat,Red_Arm_Div_lon]=ginput(1);
%             temp1=[temp1;[Red_Arm_Div_lat,Red_Arm_Div_lon]];
            geoscatter(Red_Inf_Div_lat,Red_Inf_Div_lon,100,'filled',"square","MarkerFaceColor","magenta","MarkerEdgeColor","black");
            text(Red_Inf_Div_lat,Red_Inf_Div_lon,'  Inf Div')
%             gtext("Inf Div"+j,'Color','blue','FontSize',10)
            hold on
            end
            
            
            
            
            [Bat_lat,Bat_lon]=ginput(1);
            geoscatter(Bat_lat,Bat_lon,100,'filled','^');
            gtext('Arty Bat','Color','blue','FontSize',10)
            hold on
            
            [lat,lon] = ginput(1);
            hold on
           
             geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
            geoscatter(lat,lon,'filled','b')
              gtext('Aim Point','Color','red','FontSize',10)
%             tx = txsite('Name','Bat Loc','Latitude',Bat_lat,'Longitude',Bat_lon);
%             rx = rxsite('Name','Aim Point','Latitude',lat,'Longitude',lon);
%             dme = distance(tx,rx);
%             gtext(strcat('Distance:',dme),'Color','blue','FontSize',10)
%             hold on
%             dim = [ .5 .5 .01 .01];
%             annotation('rectangle',dim,'Color','red')
            geoplot([Bat_lat lat],[Bat_lon lon],'g-*')
            earthRadiusInMeters = 6371000;
            distInMeters = distance(Bat_lat, Bat_lon,lat, lon, earthRadiusInMeters)
            distInKilometers = distInMeters/1000;

            % arclen = distance('gc',[Bat_lat, Bat_lon],[lat,lon])
             gtext("Distance:"+distInKilometers+"km",'Color','black','FontSize',10)
             hold on
            for i=1:1:30
                shots_x=(lat-0.1)+0.2*rand();
                shots_y=(lon-0.1)+0.2*rand();
                hold on
                 geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
                geoplot(app.gx,shots_x,shots_y,'r.')
                hold on
            end
            geoplot([Red_Arm_Div_lat lat],[Red_Arm_Div_lon lon],'r-*')
            hold on
            temp=[];
            Red_Arm_Div_lat_initial=Red_Arm_Div_lat;
            Red_Arm_Div_lon_initial=Red_Arm_Div_lon;
           for i=1:1:30
               dist_mult_lat=(lat-Red_Arm_Div_lat_initial)/30
               dist_mult_lon=(lon-Red_Arm_Div_lon_initial)/30
               temp=[temp;dist_mult_lat];
               Red_Arm_Div_lat=Red_Arm_Div_lat+dist_mult_lat;
               Red_Arm_Div_lon= Red_Arm_Div_lon+dist_mult_lon;
                geoscatter(Red_Arm_Div_lat,Red_Arm_Div_lon,100,'filled',"square","MarkerFaceColor","red","MarkerEdgeColor","black");
%                geoplot(app.gx,Red_Arm_Div_lat,Red_Arm_Div_lon,'rs')
               geoplot([Red_Arm_Div_lat lat],[Red_Arm_Div_lon lon],'r-*')
%                hold on
               pause(1);
           end
          temp
        end

        % Button pushed function: INFVsINFButton
        function INFVsINFButtonPushed(app, event)
% %% ************************************************
% %%              INF DIV vs INF DIV
% %%*************************************************

            app.gx=geoaxes;
%              latSeattle = 5.62;
%             lonSeattle = 65.33;
%             latAnchorage = 35.20;
%             lonAnchorage = 97.9;
            latSeattle = 30;
            lonSeattle = 73;
            latAnchorage = 32;
            lonAnchorage = 76;
             geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
            geobasemap(app.gx,"satellite");
            hold on
load('resources.mat');
for i=1:1:200
    if(s(i).side==1)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'bo','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"inf Div"+"("+i+")");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[0 0 1]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
            for n=1:1:100
                pers_x=(s(i).Lat-0.1)+0.2*rand();
                pers_y=(s(i).Lon-0.05)+0.1*rand();
                hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
                geoplot(app.gx,pers_x,pers_y,'b.')
                hold on
            end
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'bs','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"Arm Div"+"("+i+")");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1]);
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'b*','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"Arty Div"+"("+i+")");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'g^','MarkerFaceColor','green','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base"+"("+i+")");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",3,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        end
        
    elseif(s(i).side==2)
        if(s(i).type==1)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'ro','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"inf Div"+"("+i+")");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[1 0 0]);
         drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
            for n=1:1:100
              pers_x=(s(i).Lat-0.1)+0.2*rand();
                pers_y=(s(i).Lon-0.05)+0.1*rand();
                hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
                geoplot(app.gx,pers_x,pers_y,'r.');
                hold on
            end
        elseif(s(i).type==2)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'rs','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arm Div"+"("+i+")");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[1 0 0]);
            hold on   
        elseif(s(i).type==3)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arty Div"+"("+i+")");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[1 0 0]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'y^','MarkerFaceColor','yellow','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base"+"("+i+")")  ;
        end
    end
end
[inf1,inf2]=ginput(1)
s1=["1. Name:"+s(117).Name, "2.Type (inf,Arm, Arty):"+s(117).type,"3.Side(Blue,Red):"+s(117).side,"4. Det Range(km)"+s(117).Det];
text(app.gx,inf1,inf2,s1,"Color","blue","BackgroundColor","white") ;

%     kk=-0.5;
    app.DialogApp=howmany(app);
    [o p]=ginput(1);
     text(app.gx,o,p,"Attacked by"+app.K+"Divs","Color","red","BackgroundColor","white") ;
%     kk=app.K
    move_data=[];
    k=1;
    while(k<app.K+1)
        app.DialogApp=whict_unit_to_move(app);
        [inf1,inf2]=ginput(1)
        s1=["1. Name:"+s(app.Move_id).Name, "2.Type (inf,Arm, Arty):"+s(app.Move_id).type,"3.Side(Blue,Red):"+s(app.Move_id).side,"4. Det Range(km)"+s(app.Move_id).Det];
        text(app.gx,inf1,inf2,s1,"Color","red","BackgroundColor","white") ;
        [x,y]=ginput(1);     
        geoplot([s(app.Move_id).Lat x],[s(app.Move_id).Lon y],'g-*');
                    earthRadiusInMeters = 6371000;
                    distInMeters = distance(s(app.Move_id).Lat, s(app.Move_id).Lon,x,y,earthRadiusInMeters);
                    distInKilometers = distInMeters/1000;
                    CV1=1;CV2=2;
                    penalty=CV1/CV2;
                    speed=30*penalty;
                    time_required=round(distInKilometers/speed); % @30 km /hour;
                    d1=(x-s(app.Move_id).Lat)/time_required;
                    d2=(y-s(app.Move_id).Lon)/time_required;
                    theta=rad2deg(atan(d2/d1));
                    % arclen = distance('gc',[Bat_lat, Bat_lon],[lat,lon])
                     gtext("Distance:"+distInKilometers+"km"+""+theta,'Color','black','FontSize',10,"BackgroundColor","white");
                     hold on
                     move_data=[move_data;[k,app.Move_id,time_required,d1,d2,theta]];
                     k=k+1;   
    end
    move_data

time_required1=max(move_data(:,3));


% j=app.K;
for j=1:1:time_required1
%         x1_k=[];
%         y1_k=[];
%         x2_k=[];
%         y2_k=[];
%         A_k=[];
%         B_k=[];
%         dd_k=[];
 ar=[];
  temp=[];
 
  for k=1:1:app.K
          
    if(move_data(k,4)==0 && move_data(k,5)==0)  
       break;
    else
     s(move_data(k,2)).Lat=s(move_data(k,2)).Lat+move_data(k,4);
     s(move_data(k,2)).Lon=s(move_data(k,2)).Lon+move_data(k,5);
 
    for i=[117,move_data(k,2)]
    if(s(i).side==1)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'bo','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[0 0 1]);
%             roi1=drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1],"RotationAngle",move_data(k,6));
            roi1=drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            temp=[temp;roi1.Vertices];
            ar=[ar;roi1.Position];
            hold on
             for n=1:1:100
              pers_x=(s(i).Lat-0.1)+0.2*rand();
                pers_y=(s(i).Lon-0.05)+0.1*rand();
                hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
                geoplot(app.gx,pers_x,pers_y,'r.');
                hold on
            end
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'bs','MarkerFaceColor','blue','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"Arm Div")
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1]);
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'b*','MarkerFaceColor','blue','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"Arty Div")
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1],"RotationAngle",move_data(k,6))
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on  
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'g^','MarkerFaceColor','green','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon," Air Base")
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",3,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        end
        
    elseif(s(i).side==2)
        if(s(i).type==1)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'ro','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[1 0 0]);
            roi2=drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1],"RotationAngle",move_data(k,6));
            hold on
            temp=[temp;roi2.Vertices];
             ar=[ar;roi2.Position];
             for n=1:1:100
            pers_x=(s(i).Lat-0.1)+0.2*rand();
                pers_y=(s(i).Lon-0.05)+0.1*rand();
                hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
                geoplot(app.gx,pers_x,pers_y,'r.')
                hold on
            end
        elseif(s(i).type==2)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'rs','MarkerFaceColor','red','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"  Arm Div")
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[1 0 0]);
            hold on   
        elseif(s(i).type==3)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"  Arty Div")
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[1 0 0]);
            hold on 
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'y^','MarkerFaceColor','yellow','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon," Air Base")  
        end
%         [inf2,inf3]=ginput(1);
% [xi,yi]=polyxpoly(roi1,roi2)
% gtext(app.gx,inf2,inf3,""+ xi,"Color","red","BackgroundColor","white") 
    end
% A=ar(1,:);
% drawrectangle(app.gx,'Position',A,"RotationAngle",move_data(k,6))
% hold on
% B=ar(2,:);
% drawrectangle(app.gx,'Position', B,"RotationAngle",move_data(k,6))
% hold on
% rectint(A,B)  

end
   
% h.X=s(118).Lat;
% h.Y=s(118).Lon;


%             h=plot(app.gx,s(118).Lat,s(118).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black');
%             h1=text(app.gx,s(118).Lat,s(118).Lon,"  Arty Div")
%             h2=drawcircle(app.gx,"Center",[s(118).Lat,s(118).Lon],"Radius",1,"Color",[0 0 1]);
%             h3=  drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1],"RotationAngle",move_data(k,6))

%             hold on
%   cla(h)


%   cla
 ar 
temp


% poly1=[x1,y1]
% poly2=[x2,y2]
% A=ar(1,:);
% rectangle('Position',A)
% hold on
% B=ar(2,:);
% rectangle('Position', B)
% hold on
% rectint(A,B)
% while(move_data(k,4)~=0 && move_data(k,5)~=0)
A=ar(2*k-1,:)
% A_k=[A_k;A]
% % drawrectangle(app.gx,'Position',A,"RotationAngle",move_data(k,6))
% % hold on
B=ar(2*k,:)
% B_k=[B_k;B]
% % drawrectangle(app.gx,'Position', B,"RotationAngle",move_data(k,6))
% % hold on
dd=rectint(A,B)
% dd_k=[dd_k;dd]
app.perc=(dd/.2*.1)*100
% % total_fighting_elements=10000;
% % fighting_elements_in_combat=total_fighting_elements*perc;
% 
x1=[temp((1+(k-1)*8):(4+(k-1)*8),1);temp((1+(k-1)*8),1)]
y1=[temp((1+(k-1)*8):(4+(k-1)*8),2);temp((1+(k-1)*8),2)]
x2=[temp((5+(k-1)*8):(8+(k-1)*8),1);temp((5+(k-1)*8),1)]
y2=[temp((5+(k-1)*8):(8+(k-1)*8),2);temp((5+(k-1)*8),2)]
% 
% x1_k=[x1_k;x1];
% y1_k=[y1_k;y1];
% x2_k=[x2_k;x2];
% y2_k=[y2_k;y2];
% 
% 
[xi,yi]=polyxpoly(x1,y1,x2,y2)
 geoplot(app.gx,xi,yi,'gs','MarkerFaceColor','green','MarkerEdgeColor','black','MarkerSize',30);
 hold on
% 
% % refreshdata
% % drawnow
pause(1)

  
% %   
        

% cla
            if(xi~=0)
            earthRadiusInMeters = 6371000;
            distInMeters = distance(xi(1),yi(1),xi(2),yi(2),earthRadiusInMeters);
            distInKilometers = distInMeters/1000;
%             density=fighting_elements_in_combat/distInKilometers;
            if(distInKilometers>0)
                app.DialogApp=msg(app,app.perc,distInKilometers);
                app.DialogApp=next_move(app,app.gx,s(move_data(k,2)).Lat,s(move_data(k,2)).Lon,s(117).Lat,s(117).Lon);
              move_data(k,4)=0;
              move_data(k,5)=0;
%               i=~move_data(k,2);
                break;
            end
            end
%   end     
% 
        if(j==time_required1)
             app.DialogApp=next_move(app,app.gx,s(move_data(k,2)).Lat,s(move_data(k,2)).Lon,s(117).Lat,s(117).Lon);
            break;
        end 
        cla
  end
 end

            
%  v=[xi(1) yi(1); xi(2) yi(2); xi(3) yi(3); xi(4) yi(4)];
%  v=[[xi yi];[x1(1,:) y1(1,:)];[x2(1,:) y2(1,:)]];
%  drawpolygon('Position',v,'Color','green')
%  hold on
%  drawpolygon(xi,yi)
%  hold on
% drawcircle(app.gx,"Center",[s(117).Lat,s(117).Lon],"Radius",10);
%    [xii,yii]=intersect(poly1,poly2)    
%    geoplot(app.gx,xii,yii,'gs','MarkerFaceColor','green','MarkerEdgeColor','black','MarkerSize',30)
%  hold on
           
          
        
%   
%     cla
 end
        end

        % Button pushed function: NavalTaskForceButton
        function NavalTaskForceButtonPushed(app, event)
% %% ************************************************
% %%              NAVAL TASK FORCE
% %%*************************************************
            app.gx=geoaxes;
            latSeattle = 5.62;
            lonSeattle = 65.33;
            latAnchorage = 35.20;
            lonAnchorage = 97.9;
             geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
            geobasemap(app.gx,"darkwater");
            hold on
             %%  *************************************
 %%            API1.mlapp
 %% **************************************
 load('resources.mat');
for i=1:1:238
    if(s(i).side==1)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'bo','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[0 0 1]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'bs','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"Arm Div");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1]);
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'b*','MarkerFaceColor','blue','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"Arty Div")
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'g^','MarkerFaceColor','green','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",3,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        elseif(s(i).type==7)
%             geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Aircraft Carrier");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1.5,"Color",[0 0 1 ]);
            drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
%             for i1=1:1:6
%                 Aircraft_x=(s(i).Lat-0.1)+0.5*rand();
%                 Aircraft_y=(s(i).Lon-0.1)+0.5*rand();
%                 hold on
% %                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
% %                 geoscatter(shots_x,shots_y,'filled','r')
%                 geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
%                 text(app.gx,Aircraft_x,Aircraft_y," A");
%                 drawcircle(app.gx,"Center",[Aircraft_x,Aircraft_y],"Radius",0.5,"Color",[1 0 1 ]);
%                 hold on
%             end
            hold on 
        elseif(s(i).type==71)
%             geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
%             text(app.gx,s(i).Lat,s(i).Lon," Aircraft Carrier");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1.5,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
%                 base_Lat=s(i).Lat
%                 base_Lon=s(i).Lon
                s(i).Lat=s(131).Lat;
                s(i).Lon=s(131).Lon;
            for i1=1:1:6
                Aircraft_x=(s(i).Lat-0.1)+0.5*rand();
                Aircraft_y=(s(i).Lon-0.1)+0.5*rand();
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
%                 geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
                text(app.gx,Aircraft_x,Aircraft_y," A");
                drawcircle(app.gx,"Center",[Aircraft_x,Aircraft_y],"Radius",0.5,"Color",[1 0 1 ]);
                hold on
            end
        elseif(s(i).type==8)
            geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Corvette");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1 ]);
            drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on 
        elseif(s(i).type==9)
            geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," SSBN");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
            drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on 
        end
        
    elseif(s(i).side==2)
        if(s(i).type==1)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'ro','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[1 0 0]);
         drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==2)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'rs','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arm Div");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[1 0 0]);
            hold on   
        elseif(s(i).type==3)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arty Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[1 0 0]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'y^','MarkerFaceColor','yellow','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base")  ;
        end
    end
end

    app.DialogApp=howmany(app);
    [o p]=ginput(1);
%      text(app.gx,o,p,"Attacked by"+app.K+"Divs","Color","red","BackgroundColor","white") ;
%     kk=app.K
    move_data=[];
    k=1;
    while(k<app.K+1)
         k=k+1;  
        app.DialogApp=whict_unit_to_move(app);
        [inf1,inf2]=ginput(1)
        s1=["1. Name:"+s(app.Move_id).Name, "2.Type (Carrier, Corvette, Submarines):"+s(app.Move_id).type,"3.Side(Blue,Red):"+s(app.Move_id).side,"4. Det Range(km)"+s(app.Move_id).Det];
        text(app.gx,inf1,inf2,s1,"Color","red","BackgroundColor","white") ;
        [x,y]=ginput(1);     
        geoplot([s(app.Move_id).Lat x],[s(app.Move_id).Lon y],'g-*');
                    earthRadiusInMeters = 6371000;
                    distInMeters = distance(s(app.Move_id).Lat, s(app.Move_id).Lon,x,y,earthRadiusInMeters);
                    distInKilometers = distInMeters/1000;
                    CV1=1;CV2=2;
                    penalty=CV1/CV2;
                    speed=100*penalty;
                    time_required=round(distInKilometers/speed); % @30 km /hour;
                    d1=(x-s(app.Move_id).Lat)/time_required;
                    d2=(y-s(app.Move_id).Lon)/time_required;
                    theta=rad2deg(atan(d2/d1));
                    % arclen = distance('gc',[Bat_lat, Bat_lon],[lat,lon])
                     gtext("Distance:"+distInKilometers+"km"+""+theta,'Color','black','FontSize',10,"BackgroundColor","white");
                     hold on
                     move_data=[move_data;[k,app.Move_id,time_required,d1,d2,theta]];
                     
    end
    move_data

time_required1=max(move_data(:,3))

for j=1:1:time_required1
  ar=[];
  temp=[];
 
  for k=1:1:app.K
          
    if(move_data(k,4)==0 && move_data(k,5)==0)  
       break;
    else
     s(move_data(k,2)).Lat=s(move_data(k,2)).Lat+move_data(k,4);
     s(move_data(k,2)).Lon=s(move_data(k,2)).Lon+move_data(k,5);
 
    for i=[move_data(k,2)]
    if(s(i).side==1)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'bo','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[0 0 1]);
%             roi1=drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1],"RotationAngle",move_data(k,6));
            roi1=drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            temp=[temp;roi1.Vertices];
            ar=[ar;roi1.Position];
            hold on
             for n=1:1:100
              pers_x=(s(i).Lat-0.1)+0.2*rand();
                pers_y=(s(i).Lon-0.05)+0.1*rand();
                hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
                geoplot(app.gx,pers_x,pers_y,'r.');
                hold on
            end
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'bs','MarkerFaceColor','blue','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"Arm Div")
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1]);
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'b*','MarkerFaceColor','blue','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"Arty Div")
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1],"RotationAngle",move_data(k,6))
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on  
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'g^','MarkerFaceColor','green','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon," Air Base")
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",3,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on  
        elseif(s(i).type==7)
%             geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Aircraft Carrier");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1.5,"Color",[0 0 1 ]);
            drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
%             for i1=1:1:6
%                 Aircraft_x=(s(i).Lat-0.1)+0.5*rand();
%                 Aircraft_y=(s(i).Lon-0.1)+0.5*rand();
%                 hold on
% %                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
% %                 geoscatter(shots_x,shots_y,'filled','r')
%                 geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
%                 text(app.gx,Aircraft_x,Aircraft_y," A");
%                 drawcircle(app.gx,"Center",[Aircraft_x,Aircraft_y],"Radius",0.5,"Color",[1 0 1 ]);
%                 hold on
%             end
         elseif(s(i).type==71)
%             geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
%             text(app.gx,s(i).Lat,s(i).Lon," Aircraft Carrier");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1.5,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
%                 base_Lat=s(i).Lat
%                 base_Lon=s(i).Lon
            for i1=1:1:6
                Aircraft_x=(s(i).Lat-0.1)+0.5*rand();
                Aircraft_y=(s(i).Lon-0.1)+0.5*rand();
%                 hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
%                 geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
                text(app.gx,Aircraft_x,Aircraft_y," A");
                drawcircle(app.gx,"Center",[Aircraft_x,Aircraft_y],"Radius",0.5,"Color",[1 0 1 ]);
                hold on
            end
            hold on 
        end
        
    elseif(s(i).side==2)
        if(s(i).type==1)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'ro','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[1 0 0]);
            roi2=drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1],"RotationAngle",move_data(k,6));
            hold on
            temp=[temp;roi2.Vertices];
             ar=[ar;roi2.Position];
             for n=1:1:100
            pers_x=(s(i).Lat-0.1)+0.2*rand();
                pers_y=(s(i).Lon-0.05)+0.1*rand();
                hold on
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
                geoplot(app.gx,pers_x,pers_y,'r.')
                hold on
            end
        elseif(s(i).type==2)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'rs','MarkerFaceColor','red','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"  Arm Div")
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[1 0 0]);
            hold on   
        elseif(s(i).type==3)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"  Arty Div")
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[1 0 0]);
            hold on 
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'y^','MarkerFaceColor','yellow','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon," Air Base")  
        end
%         [inf2,inf3]=ginput(1);
% [xi,yi]=polyxpoly(roi1,roi2)
% gtext(app.gx,inf2,inf3,""+ xi,"Color","red","BackgroundColor","white") 
    end
% A=ar(1,:);
% drawrectangle(app.gx,'Position',A,"RotationAngle",move_data(k,6))
% hold on
% B=ar(2,:);
% drawrectangle(app.gx,'Position', B,"RotationAngle",move_data(k,6))
% hold on
% rectint(A,B)  

end
   
% h.X=s(118).Lat;
% h.Y=s(118).Lon;


%             h=plot(app.gx,s(118).Lat,s(118).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black');
%             h1=text(app.gx,s(118).Lat,s(118).Lon,"  Arty Div")
%             h2=drawcircle(app.gx,"Center",[s(118).Lat,s(118).Lon],"Radius",1,"Color",[0 0 1]);
%             h3=  drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1],"RotationAngle",move_data(k,6))

%             hold on
%   cla(h)


%   cla
 ar 
temp


% poly1=[x1,y1]
% poly2=[x2,y2]
% A=ar(1,:);
% rectangle('Position',A)
% hold on
% B=ar(2,:);
% rectangle('Position', B)
% hold on
% rectint(A,B)
% while(move_data(k,4)~=0 && move_data(k,5)~=0)
% A=ar(2*k-1,:)
% A_k=[A_k;A]
% % drawrectangle(app.gx,'Position',A,"RotationAngle",move_data(k,6))
% % hold on
% B=ar(2*k,:)
% B_k=[B_k;B]
% % drawrectangle(app.gx,'Position', B,"RotationAngle",move_data(k,6))
% % hold on
% dd=rectint(A,B)
% dd_k=[dd_k;dd]
% app.perc=(dd/.2*.1)*100
% % total_fighting_elements=10000;
% % fighting_elements_in_combat=total_fighting_elements*perc;
% 
% x1=[temp((1+(k-1)*8):(4+(k-1)*8),1);temp((1+(k-1)*8),1)]
% y1=[temp((1+(k-1)*8):(4+(k-1)*8),2);temp((1+(k-1)*8),2)]
% x2=[temp((5+(k-1)*8):(8+(k-1)*8),1);temp((5+(k-1)*8),1)]
% y2=[temp((5+(k-1)*8):(8+(k-1)*8),2);temp((5+(k-1)*8),2)]
% 
% x1_k=[x1_k;x1];
% y1_k=[y1_k;y1];
% x2_k=[x2_k;x2];
% y2_k=[y2_k;y2];
% 
% 
% [xi,yi]=polyxpoly(x1,y1,x2,y2)
%  geoplot(app.gx,xi,yi,'gs','MarkerFaceColor','green','MarkerEdgeColor','black','MarkerSize',30);
%  hold on
% 
% % refreshdata
% % drawnow
% pause(1)

  
% %   
        

% cla
%             if(xi~=0)
%             earthRadiusInMeters = 6371000;
%             distInMeters = distance(xi(1),yi(1),xi(2),yi(2),earthRadiusInMeters);
%             distInKilometers = distInMeters/1000;
% %             density=fighting_elements_in_combat/distInKilometers;
%             if(distInKilometers>0)
% %                 app.DialogApp=msg(app,app.perc,distInKilometers);
%                 app.DialogApp=next_move(app,app.gx,s(move_data(k,2)).Lat,s(move_data(k,2)).Lon,s(117).Lat,s(117).Lon);
%               move_data(k,4)=0;
%               move_data(k,5)=0;
% %               i=~move_data(k,2);
%                 break;
%             end
%             end
%   end     
% 
        if(j==time_required1)
             app.DialogApp=next_move1(app,app.gx,s(move_data(k,2)).Lat,s(move_data(k,2)).Lon,s(117).Lat,s(117).Lon);
            break;
        end 
%         cla
 pause(1)
    end
     cla
 end

            
%  v=[xi(1) yi(1); xi(2) yi(2); xi(3) yi(3); xi(4) yi(4)];
%  v=[[xi yi];[x1(1,:) y1(1,:)];[x2(1,:) y2(1,:)]];
%  drawpolygon('Position',v,'Color','green')
%  hold on
%  drawpolygon(xi,yi)
%  hold on
% drawcircle(app.gx,"Center",[s(117).Lat,s(117).Lon],"Radius",10);
%    [xii,yii]=intersect(poly1,poly2)    
%    geoplot(app.gx,xii,yii,'gs','MarkerFaceColor','green','MarkerEdgeColor','black','MarkerSize',30)
%  hold on
           
          
        
 
   
 end


        end

        % Button pushed function: DrawNavalScenarioButton
        function DrawNavalScenarioButtonPushed(app, event)
% %% ************************************************
% %%              NAVAL TASK FORCE
% %%*************************************************
            app.gx=geoaxes;
            latSeattle = -5;
            lonSeattle = 65.33;
            latAnchorage = 35.20;
            lonAnchorage = 97.9;
             geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
            geobasemap(app.gx,"satellite");
            hold on
            
            
       load('resources.mat');
for i=1:1:238
    if(s(i).side==1)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'bo','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[0 0 1]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'bs','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"Arm Div");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1]);
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'b*','MarkerFaceColor','blue','MarkerEdgeColor','black')
            text(app.gx,s(i).Lat,s(i).Lon,"Arty Div")
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'g^','MarkerFaceColor','green','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",3,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on   
%         elseif(s(i).type==7)
% %             geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
%             text(app.gx,s(i).Lat,s(i).Lon," Aircraft Carrier");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1.5,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
% %             geobubble(s,s.Lat,s.Lon,s.Det)
% %             for i1=1:1:6
% %                 Aircraft_x=(s(i).Lat-0.1)+0.5*rand();
% %                 Aircraft_y=(s(i).Lon-0.1)+0.5*rand();
% %                 hold on
% % %                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
% % %                 geoscatter(shots_x,shots_y,'filled','r')
% %                 geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
% %                 text(app.gx,Aircraft_x,Aircraft_y," A");
% %                 drawcircle(app.gx,"Center",[Aircraft_x,Aircraft_y],"Radius",0.5,"Color",[1 0 1 ]);
% %                 hold on
% %             end
%             hold on 
%         elseif(s(i).type==71)
% %             geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
% %             text(app.gx,s(i).Lat,s(i).Lon," Aircraft Carrier");
% %             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1.5,"Color",[0 0 1 ]);
% %             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
% %             geobubble(s,s.Lat,s.Lon,s.Det)
% %                 base_Lat=s(i).Lat
% %                 base_Lon=s(i).Lon
%                 s(i).Lat=s(131).Lat;
%                 s(i).Lon=s(131).Lon;
%             for i1=1:1:6
%                 Aircraft_x=(s(i).Lat-0.1)+0.5*rand();
%                 Aircraft_y=(s(i).Lon-0.1)+0.5*rand();
% %                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
% %                 geoscatter(shots_x,shots_y,'filled','r')
% %                 geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
%                 text(app.gx,Aircraft_x,Aircraft_y," A");
%                 drawcircle(app.gx,"Center",[Aircraft_x,Aircraft_y],"Radius",0.5,"Color",[1 0 1 ]);
%                 hold on
%             end
%         elseif(s(i).type==8)
%             geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
%             text(app.gx,s(i).Lat,s(i).Lon," Corvette");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
% %             geobubble(s,s.Lat,s.Lon,s.Det)
%             hold on 
%         elseif(s(i).type==9)
%             geoplot(s(i).Lat,s(i).Lon,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
%             text(app.gx,s(i).Lat,s(i).Lon," SSBN");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[0 0 1 ]);
%             drawrectangle(app.gx,"Position",[s(i).Lat-1,s(i).Lon-0.5,2,1])
% %             geobubble(s,s.Lat,s.Lon,s.Det)
%             hold on 
        end
        
    elseif(s(i).side==2)
        if(s(i).type==1)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'ro','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  inf Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.2,"Color",[1 0 0]);
         drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==2)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'rs','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arm Div");
%             drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",.5,"Color",[1 0 0]);
            hold on   
        elseif(s(i).type==3)
            geoplot(app.gx,s(i).Lat,s(i).Lon,'r*','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon,"  Arty Div");
            drawcircle(app.gx,"Center",[s(i).Lat,s(i).Lon],"Radius",1,"Color",[1 0 0]);
            drawrectangle(app.gx,"Position",[s(i).Lat-.1,s(i).Lon-0.05,.2,.1]);
            hold on
        elseif(s(i).type==6)
            geoplot(s(i).Lat,s(i).Lon,'y^','MarkerFaceColor','yellow','MarkerEdgeColor','black');
            text(app.gx,s(i).Lat,s(i).Lon," Air Base")  ;
        end
    end
end
      
            
            table=[];
            id=0;
            
%             [s,t]=ginput(1)
%             drawellipse(app.gx, 'Center',[s,t],'SemiAxes',[0.5,3],'Color','r',"FaceAlpha",0.9);%,"FaceAlpha",0.9,"HandleVisibility",'off',"Visible","off")
% %             [s2,t2]=ginput(1)
%             drawellipse(app.gx, 'Center',[s- 0.60872,t-0.24872],'SemiAxes',[3,0.5],'Color','r',"FaceAlpha",0.9);%,"FaceAlpha",0.9,"HandleVisibility",'off',"Visible","off")
% %             [s1,t1]=ginput(1)
%             drawellipse(app.gx, 'Center',[s-3.30191,t-0.24871],'SemiAxes',[0.5,1],'Color','r',"FaceAlpha",0.9);%,"FaceAlpha",0.9,"HandleVisibility",'off',"Visible","off")
% %             s-s2
% %             s-s1
% %             t-t2
% %             t-t1
            
            
    

            
            
            
            [x,y]=ginput(1);
            id=id+1;
            table=[table;[id,x,y,"blue","Aircraft Carrier"]];
            app.Hq_x=x;
            app.Hq_y=y;
            geoplot(x,y,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,x,y," Aircraft Carrier"+id);
             drawcircle(app.gx,"Center",[x,y],"Radius",.25,"Color",[0 1 0 ]);
            drawrectangle(app.gx,"Position",[x-0.2,y-0.05,.4,.1])
%              drawcircle(app.gx,"Center",[x,y],"Radius",.25,"Color",[0 1 0 ]);
%             drawrectangle(app.gx,"Position",[x-0.2,y-0.05,.4,.1])
            hold on 
            
            
            
            app.b_Ac_mean_Lat=0;   %% aircraft mean location   6 o'clock a 9:34 (USE bLDNG, k,b y) NOT FOR tOMORROW, DONT KNOW WHO IS ON LEAVE
            app.b_Ac_mean_Lon=0;   %%   9:36 AM STICK GREEEN CREEMISH 
            for i1=1:1:6            %% 3 TIMES KHA sTICK2
                 [x,y]=ginput(1);
                Aircraft_x=(x-0.1)+0.5*rand();
                Aircraft_y=(y-0.1)+0.5*rand();
                 id=id+1;
                 table=[table;[id,Aircraft_x,Aircraft_y,"blue","Aircraft"]];
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
%                 geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
                geoplot(x,y,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
                text(app.gx,Aircraft_x,Aircraft_y," A"+id);
                drawcircle(app.gx,"Center",[Aircraft_x,Aircraft_y],"Radius",.5,"Color",[0 1 0 ]);
                   geoplot([app.Hq_x Aircraft_x],[app.Hq_y Aircraft_y],'c-*');
                hold on
                app.b_Ac_mean_Lat=app.b_Ac_mean_Lat+Aircraft_x
                app.b_Ac_mean_Lon=app.b_Ac_mean_Lon+Aircraft_y   %% FRP file (ni yrruh)(ksa hsinaM)(rotcerid ssucsid)(22:01 enog)(gnitnirP smmi)

            end
            
                app.b_Ac_mean_Lat=app.b_Ac_mean_Lat/6;
                app.b_Ac_mean_Lon=app.b_Ac_mean_Lon/6;
            
            
            
            
            app.b_c_mean_Lat=0;          %% 10-08-Pillow :10:35 (Blue) (latest RFP lot of pages) (gniyub ijbas)
            app.b_c_mean_Lon=0;
            for i=1:1:4
            [x1,y1]=ginput(1);
             id=id+1;
            table=[table;[id,x1,y1,"blue","Corvette"]];
            geoplot(x1,y1,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,x1,y1," Corvette"+id);
            drawcircle(app.gx,"Center",[x1,y1],"Radius",0.25,"Color",[0 1 0]);
            drawrectangle(app.gx,"Position",[x1-0.5,y1-0.25,.4,0.1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            app.b_c_mean_Lat=app.b_c_mean_Lat+x1
            app.b_c_mean_Lon=app.b_c_mean_Lon+y1
            geoplot([app.Hq_x x1],[app.Hq_y y1],'c-*');
            hold on 
            end
            app.b_c_mean_Lat=app.b_c_mean_Lat/4;
            app.b_c_mean_Lon=app.b_c_mean_Lon/4;
            
            [x2,y2]=ginput(1);
            id=id+1;
                 table=[table;[id,x2,y2,"blue","SSBN"]];
            geoplot(x2,y2,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,x2,y2," SSBN"+id);
            drawcircle(app.gx,"Center",[x2,y2],"Radius",.5,"Color",[0 1 0 ]);
            drawrectangle(app.gx,"Position",[x2-0.25,y2-0.125,.5,0.25],"FaceAlpha",0.9)
             geoplot([app.Hq_x x2],[app.Hq_y y2],'c-*');
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on 
            
          
            
            %     RED
            
            
            [x,y]=ginput(1);
             id=id+1;
             table=[table;[id,x,y,"red","Aircraft Carrier"]];
             app.Hq_x=x;
             app.Hq_y=y;
            geoplot(x,y,'r^','MarkerFaceColor','red','MarkerEdgeColor','black');
            text(app.gx,x,y," Aircraft Carrier"+id);
            drawcircle(app.gx,"Center",[x,y],"Radius",.25,"Color",[1 0 0 ]);
            drawrectangle(app.gx,"Position",[x-0.2,y-0.05,.4,.1])
            
            hold on 
            
            
            app.r_Ac_mean_Lat=0;   %% aircraft mean location   6 o'clock a 9:34 (USE bLDNG, k,b y) NOT FOR tOMORROW, DONT KNOW WHO IS ON LEAVE (return from use bldng 12:10)(photocopy paisa)
            app.r_Ac_mean_Lon=0;   %%   9:36 AM STICK GREEEN CREEMISH (was absent from 2.30-4.00)
            
            for i1=1:1:6
                  [x,y]=ginput(1);
                Aircraft_x=(x-0.1)+0.5*rand();
                Aircraft_y=(y-0.1)+0.5*rand();
                 id=id+1;
                 table=[table;[id,Aircraft_x,Aircraft_y,"red","Aircraft"]];
%                  geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%                 geoscatter(shots_x,shots_y,'filled','r')
%                 geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
                 geoplot(x,y,'r^','MarkerFaceColor','red','MarkerEdgeColor','black');
                text(app.gx,Aircraft_x,Aircraft_y," A"+id);
                drawcircle(app.gx,"Center",[Aircraft_x,Aircraft_y],"Radius",.5,"Color",[1 0 0 ]);
                   geoplot([app.Hq_x Aircraft_x],[app.Hq_y Aircraft_y],'c-*');
                hold on
                app.r_Ac_mean_Lat=app.r_Ac_mean_Lat+Aircraft_x
                app.r_Ac_mean_Lon=app.r_Ac_mean_Lon+Aircraft_y      %% naam kisko dena?

            end
            
             app.r_Ac_mean_Lat=app.r_Ac_mean_Lat/6;
             app.r_Ac_mean_Lon=app.r_Ac_mean_Lon/6;
            
            
            
            
            app.r_c_mean_Lat=0;
            app.r_c_mean_Lon=0;
            for i=1:1:4
            [x1,y1]=ginput(1);
            id=id+1;
                 table=[table;[id,x1,y1,"red","Corvette"]];
             geoplot(x1,y1,'r^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,x1,y1," Corvette"+id);
         drawcircle(app.gx,"Center",[x1,y1],"Radius",0.25,"Color",[1 0 0]);
            drawrectangle(app.gx,"Position",[x1-0.5,y1-0.25,.4,0.1])
%             geobubble(s,s.Lat,s.Lon,s.Det)
            app.r_c_mean_Lat=app.r_c_mean_Lat+x1
            app.r_c_mean_Lon=app.r_c_mean_Lon+y1
               geoplot([app.Hq_x x1],[app.Hq_y y1],'c-*');
            hold on 
            end
            app.r_c_mean_Lat=app.r_c_mean_Lat/4;
            app.r_c_mean_Lon=app.r_c_mean_Lon/4;
            
            
            
            
            [x2,y2]=ginput(1);
              id=id+1;
                 table=[table;[id,x2,y2,"blue","SSBN"]];
             geoplot(x2,y2,'r^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,x2,y2," SSBN"+id);
           drawcircle(app.gx,"Center",[x2,y2],"Radius",.5,"Color",[1 1 0 ]);
            drawrectangle(app.gx,"Position",[x2-0.25,y2-0.125,.5,0.25],"FaceAlpha",0.9)
              geoplot([app.Hq_x x2],[app.Hq_y y2],'c-*');
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on 
            
%            save('file name.mat',table) 
           a=table(1:12,5)+table(1:12,1) 
           b=table(13:24,5)+table(13:24,1) 
           a_Lat=table(1:12,2)
           a_Lon=table(1:12,3)
            b_Lat=table(13:24,2)
           b_Lon=table(13:24,3)
%             app.DialogApp=naval_engagement(app,a(5)+a(1));
            app.DialogApp=naval_engagement(app,a,b,a_Lat,a_Lon,b_Lat,b_Lon,app.b_c_mean_Lat, app.b_c_mean_Lon, app.r_c_mean_Lat, app.r_c_mean_Lon,...
                                             app.b_Ac_mean_Lat,app.b_Ac_mean_Lon,app.r_Ac_mean_Lat,app.r_Ac_mean_Lon);
            
            
            
            
            
            
            
            
        end

        % Button pushed function: AmphibiousOperationButton
        function AmphibiousOperationButtonPushed(app, event)
% %% ************************************************
% %%              NAVAL TASK FORCE
% %%*************************************************
            app.gx=geoaxes;
            latSeattle = -5;
            lonSeattle = 65.33;
            latAnchorage = 35.20;
            lonAnchorage = 97.9;
            geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
            geobasemap(app.gx,"satellite");
            hold on
            table=[];
            id=0;
            
          
            [x,y]=ginput(1);
            id=id+1;
            table=[table;[id,x,y,"blue","Amphibious Ship"]];
            app.Hq_x=x;
            app.Hq_y=y;
            geoplot(x,y,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,x,y," Amphibious Ship"+id);
            drawcircle(app.gx,"Center",[x,y],"Radius",.25,"Color",[0 1 0 ]);
            drawrectangle(app.gx,"Position",[x-0.2,y-0.05,.4,.1])
            hold on 
                                
            MPA_x=x;
            MPA_y=y;
            id=id+1;
            table=[table;[id,MPA_x,MPA_y,"blue","MPA"]];
%           geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%           geoscatter(shots_x,shots_y,'filled','r')
%           geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
            geoplot(MPA_x,MPA_y,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,MPA_x,MPA_y,"MPA"+id);
            drawcircle(app.gx,"Center",[MPA_x,MPA_y],"Radius",.5,"Color",[0 1 0 ]);
            geoplot([app.Hq_x MPA_x],[app.Hq_y MPA_y],'c-*');
            hold on
            
            
            for i=1:1:2
            [x,y]=ginput(1);
            Helicopter_x=x;
            Helicopter_y=y;
            id=id+1;
            table=[table;[id,Helicopter_x,Helicopter_y,"blue","Helicopter"]];
%           geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%           geoscatter(shots_x,shots_y,'filled','r')
%           geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
            geoplot(Helicopter_x,Helicopter_y,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,Helicopter_x,Helicopter_y,"Helicopter"+id);
            drawcircle(app.gx,"Center",[Helicopter_x,Helicopter_y],"Radius",.25,"Color",[0 1 0 ]);
            geoplot([app.Hq_x Helicopter_x],[app.Hq_y Helicopter_y],'c-*');
            hold on
            
            end
            
            [x2,y2]=ginput(1);
            id=id+1;
            table=[table;[id,x2,y2,"red","SSBN"]];
            geoplot(x2,y2,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,x2,y2," SSBN"+id);
            drawcircle(app.gx,"Center",[x2,y2],"Radius",.5,"Color",[1 0 0 ]);
            drawrectangle(app.gx,"Position",[x2-0.25,y2-0.125,.5,0.25],"FaceAlpha",0.9)
%              geoplot([app.Hq_x x2],[app.Hq_y y2],'c-*');
%             geobubble(s,s.Lat,s.Lon,s.Det)
            hold on 
            table
            
            a=table(1:4,5)+table(1:4,1) 
            b=table(5,5)+table(5,1) 
            a_Lat=table(1:4,2)
            a_Lon=table(1:4,3)
            b_Lat=table(5,2)
            b_Lon=table(5,3)
            
            app.DialogApp=amphibious_operation(app,a,b,a_Lat,a_Lon,b_Lat,b_Lon)
            
%             roi3=drawpolyline(app.gx)
%             path=roi3.Position

            [x1 y1]=ginput(1)
            [x2 y2]=ginput(1)
            
            d1=(x2-x1)/30;
            d2=(y2-y1)/30;
            theta=rad2deg(atan(d2/d1));
            app.Hq_x=x1
            app.Hq_y=y1;
            MPA_x=x1;
            MPA_y=y1;
            Helicopter_x=str2double(a_Lat(3,1));
            Helicopter_y=str2double(a_Lon(3,1));
            
            Helicopter_x1=str2double(a_Lat(4,1));
            Helicopter_y1=str2double(a_Lon(4,1));
            
            
            
            
% 
%             d1=path(2,1)-path(1,1)/10
%             d2=path(2,2)-path(1,2)/10
%             theta=rad2deg(atan(d2/d1))
             geoplot([x1 x2],[y1 y2],'c-*');
             hold on
            
            for i=0:1:29
                
           
            geoplot(x,y,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
%             text(app.gx,x,y," Amphibious Ship"+id);
            drawcircle(app.gx,"Center",[app.Hq_x,app.Hq_y],"Radius",.25,"Color",[0 1 0 ]);
            drawrectangle(app.gx,"Position",[app.Hq_x-0.2,app.Hq_y-0.05,.4,.1])
            hold on 
            
            
          
%           geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage])
%           geoscatter(shots_x,shots_y,'filled','r')
%           geoplot(app.gx,Aircraft_x,Aircraft_y,'ro')
            geoplot(MPA_x,MPA_y,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,MPA_x,MPA_y,"MPA"+id);
            drawcircle(app.gx,"Center",[MPA_x,MPA_y],"Radius",.5,"Color",[0 1 0 ]);
            geoplot([app.Hq_x MPA_x],[app.Hq_y MPA_y],'c-*');
            hold on

            
            
            geoplot(Helicopter_x,Helicopter_y,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,Helicopter_x,Helicopter_y,"Helicopter");
            drawcircle(app.gx,"Center",[Helicopter_x,Helicopter_y],"Radius",.25,"Color",[0 1 0 ]);
            hold on
            
            
            geoplot(Helicopter_x1,Helicopter_y1,'b^','MarkerFaceColor','blue','MarkerEdgeColor','black');
            text(app.gx,Helicopter_x1,Helicopter_y1,"Helicopter");
            drawcircle(app.gx,"Center",[Helicopter_x1,Helicopter_y1],"Radius",.25,"Color",[0 1 0 ]);
            hold on
            
            
            
            
            
%             end
            
            Helicopter_x=Helicopter_x+d1
            Helicopter_y=Helicopter_y+d2
            Helicopter_x1=Helicopter_x1+d1
            Helicopter_y1=Helicopter_y1+d2
             MPA_x=MPA_x+d1
             MPA_y=MPA_y+d2
            app.Hq_x=app.Hq_x+d1
            app.Hq_y=app.Hq_y+d2
            
             pause(1)
               cla 
            end
            
      
            
            
          
            
            
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 756 221];
            app.UIFigure.Name = 'MATLAB App';

            % Create DeployREDButton
            app.DeployREDButton = uibutton(app.UIFigure, 'push');
            app.DeployREDButton.Position = [30 84 89 22];
            app.DeployREDButton.Text = 'Deploy RED';

            % Create DeployBLUEButton
            app.DeployBLUEButton = uibutton(app.UIFigure, 'push');
            app.DeployBLUEButton.Position = [146 84 88 22];
            app.DeployBLUEButton.Text = 'Deploy BLUE';

            % Create DrawLineButton
            app.DrawLineButton = uibutton(app.UIFigure, 'push');
            app.DrawLineButton.Position = [264 84 88 22];
            app.DrawLineButton.Text = 'Draw Line';

            % Create MOVEARTYDIVButton
            app.MOVEARTYDIVButton = uibutton(app.UIFigure, 'push');
            app.MOVEARTYDIVButton.ButtonPushedFcn = createCallbackFcn(app, @MOVEARTYDIVButtonPushed, true);
            app.MOVEARTYDIVButton.Position = [374 84 108 22];
            app.MOVEARTYDIVButton.Text = 'MOVE ARTY DIV';

            % Create AIMPOINTButton_2
            app.AIMPOINTButton_2 = uibutton(app.UIFigure, 'push');
            app.AIMPOINTButton_2.ButtonPushedFcn = createCallbackFcn(app, @AIMPOINTButton_2Pushed, true);
            app.AIMPOINTButton_2.Position = [493 84 100 22];
            app.AIMPOINTButton_2.Text = 'AIM POINT';

            % Create INFVsINFButton
            app.INFVsINFButton = uibutton(app.UIFigure, 'push');
            app.INFVsINFButton.ButtonPushedFcn = createCallbackFcn(app, @INFVsINFButtonPushed, true);
            app.INFVsINFButton.Position = [618 84 88 22];
            app.INFVsINFButton.Text = 'INF Vs INF';

            % Create ARTYSUPPORTTOTHESCENARIOLabel
            app.ARTYSUPPORTTOTHESCENARIOLabel = uilabel(app.UIFigure);
            app.ARTYSUPPORTTOTHESCENARIOLabel.FontSize = 24;
            app.ARTYSUPPORTTOTHESCENARIOLabel.FontWeight = 'bold';
            app.ARTYSUPPORTTOTHESCENARIOLabel.FontColor = [1 0.4118 0.1608];
            app.ARTYSUPPORTTOTHESCENARIOLabel.Position = [165 136 428 30];
            app.ARTYSUPPORTTOTHESCENARIOLabel.Text = 'ARTY SUPPORT TO THE SCENARIO';

            % Create NavalTaskForceButton
            app.NavalTaskForceButton = uibutton(app.UIFigure, 'push');
            app.NavalTaskForceButton.ButtonPushedFcn = createCallbackFcn(app, @NavalTaskForceButtonPushed, true);
            app.NavalTaskForceButton.Position = [26 31 108 22];
            app.NavalTaskForceButton.Text = 'Naval Task Force';

            % Create DrawNavalScenarioButton
            app.DrawNavalScenarioButton = uibutton(app.UIFigure, 'push');
            app.DrawNavalScenarioButton.ButtonPushedFcn = createCallbackFcn(app, @DrawNavalScenarioButtonPushed, true);
            app.DrawNavalScenarioButton.Position = [151 31 128 22];
            app.DrawNavalScenarioButton.Text = 'Draw Naval Scenario';

            % Create AmphibiousOperationButton
            app.AmphibiousOperationButton = uibutton(app.UIFigure, 'push');
            app.AmphibiousOperationButton.ButtonPushedFcn = createCallbackFcn(app, @AmphibiousOperationButtonPushed, true);
            app.AmphibiousOperationButton.Position = [312 31 134 22];
            app.AmphibiousOperationButton.Text = 'Amphibious Operation';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Draw_Scenario_exported(varargin)

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