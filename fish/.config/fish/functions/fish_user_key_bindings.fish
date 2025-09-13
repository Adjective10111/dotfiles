function fish_user_key_bindings
	fish_vi_key_bindings insert

	# vi bindings
	bind -M default --user g,l end-of-line
	bind -M default --user g,h beginning-of-line
end

