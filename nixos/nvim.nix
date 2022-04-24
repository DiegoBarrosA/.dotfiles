{ pkgs, config, ... }:
{

 
config = {
environment.systemPackages =  with pkgs; [
        ( neovim.override {
      configure = {
        customRC = ''
		syntax on
		set number
		set smartindent
            map <C-n> :NERDTreeToggle<CR>
                set termguicolors 
            autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	 
		let ayucolor="dark"
		colorscheme ayu
        '';
        packages.myVimPackage = with pkgs.vimPlugins; {
          # see examples below how to use custom packages
          start = [ nerdtree YouCompleteMe lightline-vim ayu-vim];
          opt = [ ];
        }; 
      };     
    }
  
  
  )
];

 nixpkgs.overlays = [
   (self: super: {
     neovim = super.neovim.override {
       viAlias = true;
       vimAlias = true;
     };
   })
 ];
 



};
}
