{ pkgs, legacyPolygott }: {
	deps = [
        pkgs.lua
        pkgs.sumneko-lua-language-server
	] ++ legacyPolygott;
}