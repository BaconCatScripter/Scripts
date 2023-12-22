game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Made By Im Patrick";
	Text = "";
	Icon = ""})
Duration = 16;



IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end
m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

-- for modes u can go in this link : https://Nexo.notxeneon15.repl.co/nexo/modes.lua

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == 'Normal' then
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle

hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(45+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(69+12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+12*math.cos(sine/19))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(65+-12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+-12*math.cos(sine/19))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk

hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(32+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(95+12*math.cos(sine/22)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(36+9*math.cos(sine/21)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
end
srv.RenderStepped:Wait()
end
end)()

Mode = 'Normal'
mode=m.KeyDown:Connect(function(a)
if a == 'z' then
Mode = 'normal man'
end
if a == 'f' then
Mode = 'Normal'
end
if a == 'q' then
Mode = 'Crazy man'
end
if a == 'x' then
Mode = 'hug man'
end
if a == 'c' then
Mode = 'hug'
end
if a == 'e' then
Mode = 'yes'
wait(2)
Mode = 'Normal'
end
if a == 'r' then
Mode = 'no'
wait(2)
Mode = 'Normal'
end
end)

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then mode:Disconnect() break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == 'normal man' then
--First Mode--
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle


hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(45+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0.3*math.cos(sine/23),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(156+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+54*math.cos(sine/6))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(56+13*math.cos(sine/22)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(32+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(95+12*math.cos(sine/22)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(36+9*math.cos(sine/21)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
-------------
elseif Mode == 'Crazy man' then
--Second Mode--
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(-23+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0.2*math["cos"](sine/26))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),17+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(156+15*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),17+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(23+23*math.cos(sine/23)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(32+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/29)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),17+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(121+0*math.cos(sine/26)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),17+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(32+0*math.cos(sine/28)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
--------------
elseif Mode == 'hug man' then
--Second Mode--
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.6*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(45+10*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0.2*math["cos"](sine/26))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+2*math.cos(sine/22),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(69+15*math.cos(sine/23)),math.rad(0+0*math.cos(sine/10)),math.rad(0+-15*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+-2*math.cos(sine/22),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(69+15*math.cos(sine/23)),math.rad(0+0*math.cos(sine/10)),math.rad(0+15*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(32+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(95+12*math.cos(sine/22)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(36+9*math.cos(sine/21)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
--------------
elseif Mode == 'hug' then
--Second Mode--
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle

hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(45+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+1*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(69+12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+12*math.cos(sine/19))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(65+-12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+-12*math.cos(sine/19))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(32+5*math["cos"](sine/22)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(95+12*math.cos(sine/22)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(36+9*math.cos(sine/21)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
--------------
elseif Mode == 'yes' then
--Second Mode--
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle


hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(45+42*math["cos"](sine/5)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0.2*math["cos"](sine/26))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(69+12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+12*math.cos(sine/19))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(65+-12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+-12*math.cos(sine/19))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(32+5*math["cos"](sine/12)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(69+12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+12*math.cos(sine/19))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(65+-12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+-12*math.cos(sine/19))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
--------------
elseif Mode == 'no' then
--Second Mode--
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle


hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(45+0.2*math["cos"](sine/25)),math.rad(0+-45*math["cos"](sine/5)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(69+12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+12*math.cos(sine/19))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(65+-12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+-12*math.cos(sine/19))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('MediHood','Head',CFrame.new(0,18,0),CFrame.new(0+0*math["cos"](sine/10),0+0.1*math["cos"](sine/18),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(32+5*math["cos"](sine/12)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)

NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-16+0.1*math.cos(sine/19),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/19)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(69+12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+12*math.cos(sine/19))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),16+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(65+-12*math.cos(sine/25)),math.rad(0+0*math.cos(sine/10)),math.rad(0+-12*math.cos(sine/19))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.82+0*math.cos(sine/10),-0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0+0*math.cos(sine/10),-0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
--------------
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator