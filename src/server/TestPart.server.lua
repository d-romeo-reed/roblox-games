-- Creates a red part in the workspace so you can see Rojo is working!

print("TestPart script is running!")

local part = Instance.new("Part")
part.Size = Vector3.new(10, 1, 10)
part.Position = Vector3.new(0, 10, 0)
part.BrickColor = BrickColor.new("Bright red")
part.Material = Enum.Material.Neon
part.Anchored = true
part.Parent = workspace

print("Red glowing platform created at Y=10!")
