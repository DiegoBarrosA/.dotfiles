{ pkgs, config, ... }: {

  config = {
    environment.systemPackages = with pkgs;
      [
        (neovim.override {
          configure = {
            customRC = ''
                            		syntax on
                            		set number
                            		set smartindent
              			colorscheme onedark
                                        map <C-n> :NERDTreeToggle<CR>
                                            set termguicolors 
                                        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
                            	 
                            		let g:ale_fixers = {
                            		\   'javascript': ['prettier'],
                            		\   'css': ['prettier'],                             
                            		\    'markdown': ['prettier'],
                            		\    'yaml': ['prettier'],
                                 		\    'html': ['prettier'], 
                                  \}

                            		let g:ale_linters_explicit = 1
                            		let g:ale_fix_on_save = 1
                          '';
            packages.myVimPackage = with pkgs.vimPlugins; {
              # see examples below how to use custom packages
              start = [
                nerdtree
                YouCompleteMe
                lightline-vim
                ale
                indentLine
                onedark-vim
              ];
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
