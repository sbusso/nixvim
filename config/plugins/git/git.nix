{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    fugitive
  ];

  # extraConfigLua = ''
  #   require("telescope").load_extension("lazygit")
  # '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>gf";
      action = "<cmd>Git<CR>";
      options = {
        desc = "fuGitive (root dir)";
      };
    }
  ];
}
