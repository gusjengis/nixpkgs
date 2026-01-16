{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "hyprlog";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "gusjengis";
    repo = "hyprlog";
    tag = "v${finalAttrs.version}";
    hash = "sha256-/vw9sQJhzDU7cL2ht1X0mfRR0vKhE8MkovRsvCb13jQ=";
  };

  cargoHash = "sha256-m5u5Cds0figigkpqTJHnjJikp3pwlOjPe6hOE5jq53M=";

  meta = {
    description = "Hyprland focus/activity logger";
    homepage = "https://github.com/gusjengis/hyprlog";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ gusjengis ];
    mainProgram = "hyprlog";
    platforms = lib.platforms.linux;
  };
})
