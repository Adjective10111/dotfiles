# Add ~/.local/bin to PATH
if test -d ~/.local/bin
	fish_add_path ~/.local/bin
end
# Add depot_tools to PATH
if test -d ~/Applications/depot_tools
	fish_add_path ~/Applications/depot_tools
end

