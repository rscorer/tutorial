{pkgs}: {
  channel = "unstable";
  packages = [
    pkgs.nodejs_21
    nodejs.pkgs.remix
  ];
  idx.extensions = [
    "svelte.svelte-vscode"
    "vue.volar"
  ];
  idx.previews = {
    previews = [
      {
        command = [
          "npm"
          "run"
          "dev"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
        ];
        id = "web";
        manager = "web";
      }
    ];
  };
}