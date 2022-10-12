local SpectrumUI = game.Players.LocalPlayer.PlayerGui:WaitForChild("Spectrum"):WaitForChild("Main")
local SideBarFrame = SpectrumUI:WaitForChild("SideBar")
local SectionsFrame = SpectrumUI:WaitForChild("Sections")

for i, v in pairs(SideBarFrame:WaitForChild("Container"):GetChildren()) do
	if v:IsA("Frame") then
		v.Frame.TextButton.MouseButton1Click:Connect(function()
			for x, y in pairs(SectionsFrame:GetChildren()) do
				if y:IsA("Frame") then
					if v.Frame.TextLabel.Text == y.Name then
						y.Visible = true
					else
						y.Visible = false
					end
				end
			end
		end)
	end
end
