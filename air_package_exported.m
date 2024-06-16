classdef air_package_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                      matlab.ui.Figure
        xyz                           matlab.ui.control.Label
        TargetTypeLabel               matlab.ui.control.Label
        T                             matlab.ui.control.DropDown
        AllocateButton                matlab.ui.control.Button
        AircraftDropDownLabel         matlab.ui.control.Label
        A                             matlab.ui.control.DropDown
        AmmunitionsLabel              matlab.ui.control.Label
        M                             matlab.ui.control.DropDown
        PkLabel                       matlab.ui.control.Label
        M_2                           matlab.ui.control.DropDown
        TargetDistanceLabel           matlab.ui.control.Label
        REDTASKFORCE_2                matlab.ui.control.DropDown
        EscortLabel                   matlab.ui.control.Label
        REDTASKFORCE_3                matlab.ui.control.DropDown
        SEADLabel                     matlab.ui.control.Label
        REDTASKFORCE_4                matlab.ui.control.DropDown
        HalfSquadronEditFieldLabel    matlab.ui.control.Label
        HalfSquadron                  matlab.ui.control.NumericEditField
        HalfSquadronEditField_2Label  matlab.ui.control.Label
        ESCORTHalfSquadron            matlab.ui.control.NumericEditField
        HalfSquadronEditField_3Label  matlab.ui.control.Label
        SEADHalfSquadron              matlab.ui.control.NumericEditField
    end

    
    properties (Access = private)
        CallingApp % Description
        DialogApp
        x2;
        y2;
        x;
        y;
        x1;
        y1;
        x3;
        y3;
        distance1;
        distance_halfSq;
        distInMeters_AD;
        xx;
        yy;
        b_c_mean_Lat
        b_c_mean_Lon
        r_c_mean_Lat
        r_c_mean_Lon
        b_Ac_mean_Lat
        b_Ac_mean_Lon
        r_Ac_mean_Lat
        r_Ac_mean_Lon
        gx % Description
        aircraft_type % Description
        target_type % Description
%         HalfSquadron.Value=3;
%                  app.SEADHalfSquadron.Value=4;
%                  app.ESCORTHalfSquadron.Value=2;
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, mainapp, a, a_Lat, a_Lon)
            app.CallingApp=mainapp;  %% lineant, vaday A() B(22.--) C(yfitcer   r,f)
%              app.gx=geoaxes;
%             latSeattle = -5;
%             lonSeattle = 65.33;
%             latAnchorage = 35.20;
%             lonAnchorage = 97.9;
%             geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
%             geobasemap(app.gx,"darkwater");
%            
%             hold on
            app.gx=geoaxes;
            latSeattle = 29;
            lonSeattle = 70;
            latAnchorage = 30;
            lonAnchorage = 71;
             geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
            geobasemap(app.gx,"darkwater");
            hold on

            
               table1=a
              app.T.Items=table1;
              app.x=str2double(a_Lat)
              app.y=str2double(a_Lon)
              
              
              %             app.DialogApp=air_package(app);
%              app.gx=geoaxes;
%             latSeattle = 29;
%             lonSeattle = 70;
%             latAnchorage = 30;
%             lonAnchorage = 71;
%              geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
%             geobasemap(app.gx,"darkwater");
%             hold on
            
%                         app.gx=geoaxes;
%             latSeattle = -5;
%             lonSeattle = 65.33;
%             latAnchorage = 35.20;
%             lonAnchorage = 97.9;
%             geolimits(app.gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage]);
%             geobasemap(app.gx,"darkwater");
%             hold on
            
            
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
    
              
              
              
              
              
              
           for m=1:1:1
             for k=1:1:1  %% Div  (+ Sw)
             for j=1:1:3    %% row
                for i=1:1:5   %% col
                drawrectangle(app.gx,"Position",[app.x(1)+j*0.02,app.y(1)+i*.01,.01,.01])
%                 geoplot(app.gx,x+j*0.02,y+i*.01,'kx',"Color",'red',"MarkerSize",50)
                
%                 drawrectangle(app.gx,"Position",[x+.02,y+i*.01,.01,.01])
%                  text(app.gx,x+.02,y+i*.01," tank Bde"+2);
%                 drawrectangle(app.gx,"Position",[x+.04,y+i*.01,.01,.01])
%                   text(app.gx,x+.04,y+i*.01," tank Bde"+3);
%                 drawrectangle(app.gx,"Position",[x,y+.1,.1,.1])
%                 text(app.gx,x,y," tank Divs"+1);
                end
%                 text(app.gx,x+j*0.02,y+i*.01," tank Bde"+j);
             end
              drawrectangle(app.gx,"Position",[app.x(1)-0.004,app.y(1)-0.015,.1,.1])
             
             end
              text(app.gx,app.x(1)-0.01,app.y(1)-0.005," tank Div"+m);
            end
            
            
%             [x y]=ginput(1)
%              id=id+1;
%                 table=[table;[id,x,y,"red","Command Center"]];
            for i=1:1:1
                drawrectangle(app.gx,"Position",[app.x(2),app.y(2),.01,.01])
                drawrectangle(app.gx,"Position",[app.x(2)+.01,app.y(2)+.0025,.01,.005])
                drawrectangle(app.gx,"Position",[app.x(2)+.02,app.y(2)+.005,.01,.0005])
%                  geoplot(app.gx,x,y,'kx',"Color",'red',"MarkerSize",50)
%                 drawrectangle(app.gx,"Position",[x,y+.1,.1,.1])

            end
            
           for k=1:1:1
            for i=1:1:1
%                  [x y]=ginput(1)
%                  id=id+1;
%                  table=[table;[id,x,y,"red","Bridge"]];
%                  [x1 y1]=ginput(1)
             geoplot(app.gx,app.x(3),app.y(3),'k^',"MarkerSize",10,"MarkerFaceColor","blue");
               hold on
%                 geoplot(app.gx,x,y,'rx',"MarkerSize",30,"MarkerFaceColor","red");
               hold on
                geoplot(app.gx,app.x(3),app.y(3),'k|',"MarkerSize",20,"MarkerFaceColor","black","LineWidth",1);
               hold on
                geoplot(app.gx,app.x(3),app.y(3)+0.04,'k^',"MarkerSize",10,"MarkerFaceColor","blue");
               hold on
%                 geoplot(app.gx,x,y+0.04,'rx',"MarkerSize",30,"MarkerFaceColor","red");
               hold on
                geoplot(app.gx,app.x(3),app.y(3)+0.04,'k|',"MarkerSize",20,"MarkerFaceColor","black","LineWidth",1);
               hold on
            end
            
           end 
            
           
           
           for i=1:1:1
%                [x,y]=ginput(1)
%                id=id+1;
%                table=[table;[id,x,y,"red","Air Force Station"]];
               roi=drawcircle(app.gx,"Center",[app.x(4),app.y(4)],"Radius",.07,"Color",[1 1 1 ],"FaceAlpha",0,"Visible","off")
               roi2=drawcircle(app.gx,"Center",[app.x(4),app.y(4)],"Radius",.09,"Color",[1 1 1 ],"FaceAlpha",0,"Visible","off")
               roi1=drawcircle(app.gx,"Center",[app.x(4),app.y(4)],"Radius",.05,"Color",[1 0 0 ],"FaceAlpha",0)
                hold on
                geoplot(app.gx,app.x(4),app.y(4),'go',"MarkerSize",30);
              
               hold on
%                size(roi.Vertices)
               for j=[2,6,8,12,14,18,20,24] %%j=1:1:25  %%
%                drawcircle(app.gx,"Center",[roi.Vertices(j,1)+.02,roi.Vertices(j,2)+.02],"Radius",.01,"Color",[0 0 1])
                drawrectangle(app.gx,"Position",[roi.Vertices(j,1),roi.Vertices(j,2),.01,.01],"Color",[0 0 1])
%                  geoplot(app.gx,roi.Vertices(j,1),roi.Vertices(j,2),'rx',"MarkerSize",30,"MarkerFaceColor","red");
%                 text(app.gx,roi2.Vertices(j,1),roi2.Vertices(j,2),""+j)
               hold on
               end
               xx=[(roi2.Vertices(4,1)+roi2.Vertices(5,1))/2; (roi2.Vertices(18,1)+roi2.Vertices(19,1))/2]
                yy=[(roi2.Vertices(4,2)+roi2.Vertices(5,2))/2; (roi2.Vertices(18,2)+roi2.Vertices(19,2))/2]
              line( xx, yy,'Color','black','LineStyle','-','LineWidth',5)
%                geoplot(app.gx,xx,yy,'ro',"MarkerSize",30);
              hold on
           end
           
           
           for i=1:1:1
%                [x,y]=ginput(1)
%                 id=id+1;
%                table=[table;[id,x,y,"red","Ordance Factory"]];
               drawrectangle(app.gx,"Position",[app.x(5),app.y(5),.01,.03])
%                 geoplot(app.gx,x,y,'r+',"MarkerSize",30,"MarkerFaceColor","red");
               drawrectangle(app.gx,"Position",[app.x(5)+.01,app.y(5),.01,.01])
               geoplot(app.gx,app.x(5)+0.02,app.y(5)+0.005,'k|',"MarkerSize",20,"MarkerFaceColor","black","LineWidth",2);
                 geoplot(app.gx,app.x(5)+0.02,app.y(5)+0.02,'k|',"MarkerSize",20,"MarkerFaceColor","black","LineWidth",2);
%             
           end
            
        end

        % Button pushed function: AllocateButton
        function AllocateButtonPushed(app, event)
            app.gx=geoaxes;
            latSeattle = 29;
            lonSeattle = 70;
            latAnchorage = 30;
            lonAnchorage = 71;
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
    
              
              
              
              
              
              
           for m=1:1:1
             for k=1:1:1  %% Div  (+ Sw)
             for j=1:1:3    %% row
                for i=1:1:5   %% col
                drawrectangle(app.gx,"Position",[app.x(1)+j*0.02,app.y(1)+i*.01,.01,.01])
                if(app.target_type==1)
                if(app.aircraft_type==1)
                   geoplot(app.gx,app.x(1)+j*0.02,app.y(1)+i*.01,'kx',"Color",'red',"MarkerSize",50)
                 app.HalfSquadron.Value=15;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                elseif(app.aircraft_type==2)
                    geoplot(app.gx,app.x(1)+j*0.02,app.y(1)+i*.01,'k+',"Color",'red',"MarkerSize",50)
                     app.HalfSquadron.Value=17;
                      app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                elseif(app.aircraft_type==3)
                    geoplot(app.gx,app.x(1)+j*0.02,app.y(1)+i*.01,'ko',"Color",'red',"MarkerSize",50)
                     app.HalfSquadron.Value=19;
                      app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                end
                end
                
%                 drawrectangle(app.gx,"Position",[x+.02,y+i*.01,.01,.01])
%                  text(app.gx,x+.02,y+i*.01," tank Bde"+2);
%                 drawrectangle(app.gx,"Position",[x+.04,y+i*.01,.01,.01])
%                   text(app.gx,x+.04,y+i*.01," tank Bde"+3);
%                 drawrectangle(app.gx,"Position",[x,y+.1,.1,.1])
%                 text(app.gx,x,y," tank Divs"+1);
                end
%                 text(app.gx,x+j*0.02,y+i*.01," tank Bde"+j);
             end
              drawrectangle(app.gx,"Position",[app.x(1)-0.004,app.y(1)-0.015,.1,.1])
             
             end
              text(app.gx,app.x(1)-0.01,app.y(1)-0.005," tank Div"+m);
            end
            
            
%             [x y]=ginput(1)
%              id=id+1;
%                 table=[table;[id,x,y,"red","Command Center"]];
            for i=1:1:1
                drawrectangle(app.gx,"Position",[app.x(2),app.y(2),.01,.01])
                drawrectangle(app.gx,"Position",[app.x(2)+.01,app.y(2)+.0025,.01,.005])
                drawrectangle(app.gx,"Position",[app.x(2)+.02,app.y(2)+.005,.01,.0005])
                if(app.target_type==2)
                if(app.aircraft_type==1 )
                 geoplot(app.gx,app.x(2),app.y(2),'kx',"Color",'red',"MarkerSize",50)
                  app.HalfSquadron.Value=3;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
%                 drawrectangle(app.gx,"Position",[x,y+.1,.1,.1])
                elseif(app.aircraft_type==2 )
                 geoplot(app.gx,app.x(2),app.y(2),'k+',"Color",'red',"MarkerSize",50)
                  app.HalfSquadron.Value=5;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                elseif(app.aircraft_type==3 )
                 geoplot(app.gx,app.x(2),app.y(2),'ko',"Color",'red',"MarkerSize",50)
                  app.HalfSquadron.Value=7;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                end
                end
            end
            
           for k=1:1:1
            for i=1:1:1
%                  [x y]=ginput(1)
%                  id=id+1;
%                  table=[table;[id,x,y,"red","Bridge"]];
%                  [x1 y1]=ginput(1)
             geoplot(app.gx,app.x(3),app.y(3),'k^',"MarkerSize",10,"MarkerFaceColor","blue");
               hold on
               if(app.target_type==3)
                      if(app.aircraft_type==1 )
                       geoplot(app.gx,app.x(3),app.y(3),'rx',"MarkerSize",30,"MarkerFaceColor","red");
                       hold on
                       geoplot(app.gx,app.x(3),app.y(3)+0.04,'rx',"MarkerSize",30,"MarkerFaceColor","red");
                       hold on
                        app.HalfSquadron.Value=2;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                      elseif(app.aircraft_type==2)
                       geoplot(app.gx,app.x(3),app.y(3),'r+',"MarkerSize",30,"MarkerFaceColor","red");
                       hold on
                       geoplot(app.gx,app.x(3),app.y(3)+0.04,'r+',"MarkerSize",30,"MarkerFaceColor","red");
                       hold on
                       app.HalfSquadron.Value=4;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                      elseif(app.aircraft_type==3)
                       geoplot(app.gx,app.x(3),app.y(3),'ro',"MarkerSize",30,"MarkerFaceColor","red");
                       hold on
                       geoplot(app.gx,app.x(3),app.y(3)+0.04,'ro',"MarkerSize",30,"MarkerFaceColor","red");
                       hold on
                         app.HalfSquadron.Value=6;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                      end
               end
%                 geoplot(app.gx,app.x(3),app.y(3),'k|',"MarkerSize",20,"MarkerFaceColor","black","LineWidth",1);
               hold on
                geoplot(app.gx,app.x(3),app.y(3)+0.04,'k^',"MarkerSize",10,"MarkerFaceColor","blue");
               hold on
               
%                 geoplot(app.gx,app.x(3),app.y(3)+0.04,'k|',"MarkerSize",20,"MarkerFaceColor","black","LineWidth",1);
               hold on
            end
            
           end 
            
           
           
           for i=1:1:1
%                [x,y]=ginput(1)
%                id=id+1;
%                table=[table;[id,x,y,"red","Air Force Station"]];
               roi=drawcircle(app.gx,"Center",[app.x(4),app.y(4)],"Radius",.07,"Color",[1 1 1 ],"FaceAlpha",0,"Visible","off")
               roi2=drawcircle(app.gx,"Center",[app.x(4),app.y(4)],"Radius",.09,"Color",[1 1 1 ],"FaceAlpha",0,"Visible","off")
               roi1=drawcircle(app.gx,"Center",[app.x(4),app.y(4)],"Radius",.05,"Color",[1 0 0 ],"FaceAlpha",0)
                hold on
                if(app.target_type==4)
                  if(app.aircraft_type==1 )
                     geoplot(app.gx,app.x(4),app.y(4),'rx',"MarkerSize",30);
                       app.HalfSquadron.Value=11;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                  elseif(app.aircraft_type==2 )
                     geoplot(app.gx,app.x(4),app.y(4),'r+',"MarkerSize",30);
                     app.HalfSquadron.Value=13;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                  elseif(app.aircraft_type==3 )
                     geoplot(app.gx,app.x(4),app.y(4),'ro',"MarkerSize",30);
                      app.HalfSquadron.Value=15;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
                  end
                end
               hold on
%                size(roi.Vertices)
               for j=[2,6,8,12,14,18,20,24] %%j=1:1:25  %%
%                drawcircle(app.gx,"Center",[roi.Vertices(j,1)+.02,roi.Vertices(j,2)+.02],"Radius",.01,"Color",[0 0 1])
                drawrectangle(app.gx,"Position",[roi.Vertices(j,1),roi.Vertices(j,2),.01,.01],"Color",[0 0 1])
               if(app.target_type==4) 
                if(app.aircraft_type==1 )
                 geoplot(app.gx,roi.Vertices(j,1),roi.Vertices(j,2),'rx',"MarkerSize",30,"MarkerFaceColor","red");
%                 text(app.gx,roi2.Vertices(j,1),roi2.Vertices(j,2),""+j)
               hold on
                 elseif(app.aircraft_type==2 )
                     geoplot(app.gx,roi.Vertices(j,1),roi.Vertices(j,2),'r+',"MarkerSize",30,"MarkerFaceColor","red");
%                 text(app.gx,roi2.Vertices(j,1),roi2.Vertices(j,2),""+j)
               hold on
               elseif(app.aircraft_type==3 )
                     geoplot(app.gx,roi.Vertices(j,1),roi.Vertices(j,2),'ro',"MarkerSize",30,"MarkerFaceColor","red");
%                 text(app.gx,roi2.Vertices(j,1),roi2.Vertices(j,2),""+j)
               hold on
                end
               end
               end
               xx=[(roi2.Vertices(4,1)+roi2.Vertices(5,1))/2; (roi2.Vertices(18,1)+roi2.Vertices(19,1))/2]
                yy=[(roi2.Vertices(4,2)+roi2.Vertices(5,2))/2; (roi2.Vertices(18,2)+roi2.Vertices(19,2))/2]
              line( xx, yy,'Color','black','LineStyle','-','LineWidth',5)
              if(app.target_type==4)
                if(app.aircraft_type==1 ) 
                  geoplot(app.gx,xx,yy,'rx',"MarkerSize",30);
                  hold on
                elseif(app.aircraft_type==2 ) 
                  geoplot(app.gx,xx,yy,'r+',"MarkerSize",30);
                  hold on
                elseif(app.aircraft_type==3 ) 
                  geoplot(app.gx,xx,yy,'ro',"MarkerSize",30);
                  hold on
                end
              end
           end
           
           
           for i=1:1:1
%                [x,y]=ginput(1)
%                 id=id+1;
%                table=[table;[id,x,y,"red","Ordance Factory"]];
               drawrectangle(app.gx,"Position",[app.x(5),app.y(5),.01,.03])
               if(app.target_type==5)
               if(app.aircraft_type==1 ) 
                geoplot(app.gx,app.x(5),app.y(5),'rx',"MarkerSize",30,"MarkerFaceColor","red");
                 app.HalfSquadron.Value=3;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
               elseif(app.aircraft_type==2 ) 
                geoplot(app.gx,app.x(5),app.y(5),'r+',"MarkerSize",30,"MarkerFaceColor","red");
                app.HalfSquadron.Value=5;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
               elseif(app.aircraft_type==3 ) 
                geoplot(app.gx,app.x(5),app.y(5),'ro',"MarkerSize",30,"MarkerFaceColor","red");
                app.HalfSquadron.Value=7;
                 app.SEADHalfSquadron.Value=4;
                 app.ESCORTHalfSquadron.Value=2;
               end
               end
               drawrectangle(app.gx,"Position",[app.x(5)+.01,app.y(5),.01,.01])
               geoplot(app.gx,app.x(5)+0.02,app.y(5)+0.005,'k|',"MarkerSize",20,"MarkerFaceColor","black","LineWidth",2);
                 geoplot(app.gx,app.x(5)+0.02,app.y(5)+0.02,'k|',"MarkerSize",20,"MarkerFaceColor","black","LineWidth",2);
%             
           end
        end

        % Value changed function: A
        function AValueChanged(app, event)
            value = app.A.Value;
            if(strcmp(value,'Rafale'))
                 app.aircraft_type=1;
            elseif(strcmp(value,'Su-30'))
                 app.aircraft_type=2;
            elseif(strcmp(value,'Tejas'))
                 app.aircraft_type=3;
            end
        end

        % Value changed function: T
        function TValueChanged(app, event)
            value = app.T.Value;
             if(strcmp(value,'Armour Div1'))
                 app.target_type=1;
            elseif(strcmp(value,'Command Center2'))
                 app.target_type=2;
             elseif(strcmp(value,'Bridge3'))
                 app.target_type=3;
             elseif(strcmp(value,'Air Force Station4'))
             app.target_type=4;
               elseif(strcmp(value,'Ordance Factory5'))
             app.target_type=5;
            end
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

            % Create xyz
            app.xyz = uilabel(app.UIFigure);
            app.xyz.FontSize = 20;
            app.xyz.FontWeight = 'bold';
            app.xyz.FontColor = [0.7176 0.2745 1];
            app.xyz.Position = [249 412 144 24];
            app.xyz.Text = 'AIR PACKAGE';

            % Create TargetTypeLabel
            app.TargetTypeLabel = uilabel(app.UIFigure);
            app.TargetTypeLabel.BackgroundColor = [1 0 0];
            app.TargetTypeLabel.HorizontalAlignment = 'center';
            app.TargetTypeLabel.FontWeight = 'bold';
            app.TargetTypeLabel.FontColor = [1 1 1];
            app.TargetTypeLabel.Position = [45 230 96 22];
            app.TargetTypeLabel.Text = 'Target Type';

            % Create T
            app.T = uidropdown(app.UIFigure);
            app.T.ValueChangedFcn = createCallbackFcn(app, @TValueChanged, true);
            app.T.FontWeight = 'bold';
            app.T.FontColor = [1 1 1];
            app.T.BackgroundColor = [1 0 0];
            app.T.Position = [163 230 100 22];

            % Create AllocateButton
            app.AllocateButton = uibutton(app.UIFigure, 'push');
            app.AllocateButton.ButtonPushedFcn = createCallbackFcn(app, @AllocateButtonPushed, true);
            app.AllocateButton.Position = [320 230 100 22];
            app.AllocateButton.Text = 'Allocate';

            % Create AircraftDropDownLabel
            app.AircraftDropDownLabel = uilabel(app.UIFigure);
            app.AircraftDropDownLabel.BackgroundColor = [1 0 0];
            app.AircraftDropDownLabel.HorizontalAlignment = 'center';
            app.AircraftDropDownLabel.FontWeight = 'bold';
            app.AircraftDropDownLabel.FontColor = [1 1 1];
            app.AircraftDropDownLabel.Position = [60 351 80 22];
            app.AircraftDropDownLabel.Text = 'Aircraft';

            % Create A
            app.A = uidropdown(app.UIFigure);
            app.A.Items = {'Rafale', 'Su-30', 'Tejas', 'MIG-29', 'Mirage 2000', 'Jaguar'};
            app.A.ValueChangedFcn = createCallbackFcn(app, @AValueChanged, true);
            app.A.FontWeight = 'bold';
            app.A.FontColor = [1 1 1];
            app.A.BackgroundColor = [1 0 0];
            app.A.Position = [162 351 100 22];
            app.A.Value = 'Rafale';

            % Create AmmunitionsLabel
            app.AmmunitionsLabel = uilabel(app.UIFigure);
            app.AmmunitionsLabel.BackgroundColor = [1 0 0];
            app.AmmunitionsLabel.HorizontalAlignment = 'center';
            app.AmmunitionsLabel.FontWeight = 'bold';
            app.AmmunitionsLabel.FontColor = [1 1 1];
            app.AmmunitionsLabel.Position = [59 310 82 22];
            app.AmmunitionsLabel.Text = 'Ammunitions';

            % Create M
            app.M = uidropdown(app.UIFigure);
            app.M.Items = {'Laser Guided', 'General Purpose', 'Cluster'};
            app.M.FontWeight = 'bold';
            app.M.FontColor = [1 1 1];
            app.M.BackgroundColor = [1 0 0];
            app.M.Position = [162 310 100 22];
            app.M.Value = 'Laser Guided';

            % Create PkLabel
            app.PkLabel = uilabel(app.UIFigure);
            app.PkLabel.BackgroundColor = [1 0 0];
            app.PkLabel.HorizontalAlignment = 'center';
            app.PkLabel.FontWeight = 'bold';
            app.PkLabel.FontColor = [1 1 1];
            app.PkLabel.Position = [89 269 25 22];
            app.PkLabel.Text = 'Pk';

            % Create M_2
            app.M_2 = uidropdown(app.UIFigure);
            app.M_2.Items = {'0.6', '0.8'};
            app.M_2.FontWeight = 'bold';
            app.M_2.FontColor = [1 1 1];
            app.M_2.BackgroundColor = [1 0 0];
            app.M_2.Position = [163 269 100 22];
            app.M_2.Value = '0.6';

            % Create TargetDistanceLabel
            app.TargetDistanceLabel = uilabel(app.UIFigure);
            app.TargetDistanceLabel.BackgroundColor = [1 0 0];
            app.TargetDistanceLabel.HorizontalAlignment = 'center';
            app.TargetDistanceLabel.FontWeight = 'bold';
            app.TargetDistanceLabel.FontColor = [1 1 1];
            app.TargetDistanceLabel.Position = [44 181 98 22];
            app.TargetDistanceLabel.Text = 'Target Distance ';

            % Create REDTASKFORCE_2
            app.REDTASKFORCE_2 = uidropdown(app.UIFigure);
            app.REDTASKFORCE_2.Items = {'1', '2', '3'};
            app.REDTASKFORCE_2.FontWeight = 'bold';
            app.REDTASKFORCE_2.FontColor = [1 1 1];
            app.REDTASKFORCE_2.BackgroundColor = [1 0 0];
            app.REDTASKFORCE_2.Position = [163 181 100 22];
            app.REDTASKFORCE_2.Value = '1';

            % Create EscortLabel
            app.EscortLabel = uilabel(app.UIFigure);
            app.EscortLabel.BackgroundColor = [1 0 0];
            app.EscortLabel.HorizontalAlignment = 'center';
            app.EscortLabel.FontWeight = 'bold';
            app.EscortLabel.FontColor = [1 1 1];
            app.EscortLabel.Position = [73 140 43 22];
            app.EscortLabel.Text = 'Escort';

            % Create REDTASKFORCE_3
            app.REDTASKFORCE_3 = uidropdown(app.UIFigure);
            app.REDTASKFORCE_3.Items = {'With', 'Without'};
            app.REDTASKFORCE_3.FontWeight = 'bold';
            app.REDTASKFORCE_3.FontColor = [1 1 1];
            app.REDTASKFORCE_3.BackgroundColor = [1 0 0];
            app.REDTASKFORCE_3.Position = [164 140 100 22];
            app.REDTASKFORCE_3.Value = 'With';

            % Create SEADLabel
            app.SEADLabel = uilabel(app.UIFigure);
            app.SEADLabel.BackgroundColor = [1 0 0];
            app.SEADLabel.HorizontalAlignment = 'center';
            app.SEADLabel.FontWeight = 'bold';
            app.SEADLabel.FontColor = [1 1 1];
            app.SEADLabel.Position = [75 99 39 22];
            app.SEADLabel.Text = 'SEAD';

            % Create REDTASKFORCE_4
            app.REDTASKFORCE_4 = uidropdown(app.UIFigure);
            app.REDTASKFORCE_4.Items = {'With', 'Without'};
            app.REDTASKFORCE_4.FontWeight = 'bold';
            app.REDTASKFORCE_4.FontColor = [1 1 1];
            app.REDTASKFORCE_4.BackgroundColor = [1 0 0];
            app.REDTASKFORCE_4.Position = [164 99 100 22];
            app.REDTASKFORCE_4.Value = 'With';

            % Create HalfSquadronEditFieldLabel
            app.HalfSquadronEditFieldLabel = uilabel(app.UIFigure);
            app.HalfSquadronEditFieldLabel.HorizontalAlignment = 'center';
            app.HalfSquadronEditFieldLabel.FontWeight = 'bold';
            app.HalfSquadronEditFieldLabel.FontColor = [1 0 0];
            app.HalfSquadronEditFieldLabel.Position = [419 351 88 22];
            app.HalfSquadronEditFieldLabel.Text = 'Half Squadron';

            % Create HalfSquadron
            app.HalfSquadron = uieditfield(app.UIFigure, 'numeric');
            app.HalfSquadron.HorizontalAlignment = 'center';
            app.HalfSquadron.FontWeight = 'bold';
            app.HalfSquadron.FontColor = [1 0 0];
            app.HalfSquadron.Position = [521 351 100 22];

            % Create HalfSquadronEditField_2Label
            app.HalfSquadronEditField_2Label = uilabel(app.UIFigure);
            app.HalfSquadronEditField_2Label.HorizontalAlignment = 'center';
            app.HalfSquadronEditField_2Label.FontWeight = 'bold';
            app.HalfSquadronEditField_2Label.FontColor = [1 0 0];
            app.HalfSquadronEditField_2Label.Position = [419 140 88 22];
            app.HalfSquadronEditField_2Label.Text = 'Half Squadron';

            % Create ESCORTHalfSquadron
            app.ESCORTHalfSquadron = uieditfield(app.UIFigure, 'numeric');
            app.ESCORTHalfSquadron.HorizontalAlignment = 'center';
            app.ESCORTHalfSquadron.FontWeight = 'bold';
            app.ESCORTHalfSquadron.FontColor = [1 0 0];
            app.ESCORTHalfSquadron.Position = [521 140 100 22];

            % Create HalfSquadronEditField_3Label
            app.HalfSquadronEditField_3Label = uilabel(app.UIFigure);
            app.HalfSquadronEditField_3Label.HorizontalAlignment = 'center';
            app.HalfSquadronEditField_3Label.FontWeight = 'bold';
            app.HalfSquadronEditField_3Label.FontColor = [1 0 0];
            app.HalfSquadronEditField_3Label.Position = [419 99 88 22];
            app.HalfSquadronEditField_3Label.Text = 'Half Squadron';

            % Create SEADHalfSquadron
            app.SEADHalfSquadron = uieditfield(app.UIFigure, 'numeric');
            app.SEADHalfSquadron.HorizontalAlignment = 'center';
            app.SEADHalfSquadron.FontWeight = 'bold';
            app.SEADHalfSquadron.FontColor = [1 0 0];
            app.SEADHalfSquadron.Position = [521 99 100 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = air_package_exported(varargin)

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