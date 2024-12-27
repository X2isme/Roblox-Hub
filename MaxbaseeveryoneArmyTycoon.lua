for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			game:GetService("ReplicatedStorage").RE.relinquish:FireServer(v2, true)
		end
	end
end
 
for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					v3.Name = v3.Value.Name
				end
			end
		end
	end
end
 
 
for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					if v3.Name == "Barracks" then
						local Class = game.ReplicatedStorage.Game.Buildings["Barracks"]["2"];
						local Button = v2;
						local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
						Target:FireServer(Class, Button);
					else
						if v3.Name == "Greenhouse" then
							local Class = game.ReplicatedStorage.Game.Buildings["Greenhouse"]["2"];
							local Button = v2;
							local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
							Target:FireServer(Class, Button);
						else
							if v3.Name == "Factory" then
									local Class = game.ReplicatedStorage.Game.Buildings["Factory"]["3"];
									local Button = v2;
									local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
									Target:FireServer(Class, Button);
							else
								if v3.Name == "Oil Field" then
										local Class = game.ReplicatedStorage.Game.Buildings["Oil Field"]["2"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
								else
									if v3.Name == "Guard Tower" then
										local Class = game.ReplicatedStorage.Game.Buildings["Guard Tower"]["1"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
									else
										if v3.Name == "Wall" then
											local Class = game.ReplicatedStorage.Game.Buildings["Wall"]["2"];
											local Button = v2;
											local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
											Target:FireServer(Class, Button);
										else
											if v3.Name == "Generator Powerplant" then
												local Class = game.ReplicatedStorage.Game.Buildings["Generator Powerplant"]["1"];
												local Button = v2;
												local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
												Target:FireServer(Class, Button);
											else
												if v3.Name == "Missile Factory" then
													local Class = game.ReplicatedStorage.Game.Buildings["Missile Factory"]["1"];
													local Button = v2;
													local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
													Target:FireServer(Class, Button);
												else
													if v3.Name == "Command Center" then
														local Class = game.ReplicatedStorage.Game.Buildings["Command Center"]["2"];
														local Button = v2;
														local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
														Target:FireServer(Class, Button);
													else
														if v3.Name == "Drone Factory" then
															local Class = game.ReplicatedStorage.Game.Buildings["Drone Factory"]["1"];
															local Button = v2;
															local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
															Target:FireServer(Class, Button);
														else
															if v3.Name == "Military" then
																local Class = game.ReplicatedStorage.Game.Buildings.Military["Tank Factory"]["2"];
																local Button = v2;
																local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																Target:FireServer(Class, Button);
															else
																if v3.Name == "Nuclear Powerplant" then
																	local Class = game.ReplicatedStorage.Game.Buildings["Nuclear Powerplant"]["1"];
																	local Button = v2;
																	local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																	Target:FireServer(Class, Button);
																else
																	if v3.Name == "Airport" then
																		local Class = game.ReplicatedStorage.Game.Buildings["Airport"]["1"];
																		local Button = v2;
																		local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																		Target:FireServer(Class, Button);
																	else
																		if v3.Name == "Helicopter Bay" then
																			local Class = game.ReplicatedStorage.Game.Buildings["Helicopter Bay"]["2"];
																			local Button = v2;
																			local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																			Target:FireServer(Class, Button);
																		else
																			if v3.Name == "Main Base" then
																				local Class = game.ReplicatedStorage.Game.Buildings["Main Base"]["2"];
																				local Button = v2;
																				local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																				Target:FireServer(Class, Button);
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
end)
