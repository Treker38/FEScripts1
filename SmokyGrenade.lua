--A Grenade, but with smoke!
local player=game.Players.LocalPlayer;
local char=game.Players.LocalPlayer.Character;
local humanoid = player.Character.Humanoid;
Tool=Instance.new('Tool', game.Players.LocalPlayer.Backpack);
Tool.GripForward=Vector3.new(-0.161, 0, -0.987);
Tool.GripPos=Vector3.new(0.1, 0, 0.1);
Tool.GripRight=Vector3.new(0.217, 0, -0.976);
Tool.GripUp=Vector3.new(0, 1, 0);
Tool.Name='Smoke Grenade'
Handle=Instance.new('Part', Tool);
Handle.Name = 'Handle';
Handle.Size=Vector3.new(1, 1.2, 1);
c4mesh=Instance.new('SpecialMesh', Handle);
c4mesh.MeshType = 'FileMesh';
c4mesh.MeshId='http://www.roblox.com/asset/?id=16975131';
c4mesh.TextureId='http://www.roblox.com/asset/?id=16975111';
c4mesh.Scale=Vector3.new(0.75, 0.75, 0.75);
light=Instance.new('PointLight', Handle);
light.Color = Color3.new(255,0,0)
light.Range=10;
light.Enabled=false;
beep=Instance.new('Sound',Handle)
beep.Volume=5;
beep.SoundId='rbxassetid://252141949'
access=Instance.new('Sound',Handle)
access.Volume=5;
access.SoundId='rbxassetid://131644923'
beeptone=Instance.new('Sound',Handle)
beeptone.Volume=5;
beeptone.SoundId='rbxassetid://75338648'
local Prepare=Instance.new("Animation");
Prepare.AnimationId="http://www.roblox.com/Asset?ID=75322014";
local Launch=Instance.new("Animation");
Launch.AnimationId="http://www.roblox.com/Asset?ID=94157627";
function onActivated()
	if not Tool.Enabled  then
		return
	end
	Tool.Enabled=false;
local LaunchAnim = humanoid:LoadAnimation(Launch);
LaunchAnim:Play();
wait(0.4)

	local p = Handle:Clone();
	local dir = char.Head.CFrame.lookVector;
	p.Velocity = (dir * 80) + Vector3.new(0,8,0);
	p.CanCollide = true;
	p.Parent = game.Workspace;
	p.Name='c4';
	beep.Parent=p;
	light.Parent=p;
	Handle.Transparency=1;

wait(0.2)
smokee=Instance.new('ParticleEmitter', p)
smokee.Size = NumberSequence.new(31)
smokee.Speed = NumberRange.new(10)
smokee.RotSpeed = NumberRange.new(-255, 250)
smokee.Texture = 'http://www.roblox.com/asset/?id=241539438'
smokee.LightEmission = 1
ex=Instance.new('Explosion',workspace);
ex.BlastPressure=6;
ex.BlastRadius=6;
ex.Position=p.Position;
smokee.VelocitySpread = 30
smokee.Rate = 500
smokee.Enabled=true;
ss=Instance.new('Sound',p);
ss.Volume=5;
ss.SoundId='rbxassetid://424618966';
ss:Play();
Handle.Transparency=1;
wait(16)
p:remove();
Handle.Transparency=0
Tool.Enabled=true;



end
Tool.Activated:connect(onActivated);
