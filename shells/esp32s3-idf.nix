{ pkgs ? import ../default.nix }:

pkgs.mkShell {
  name = "esp-idf";

  buildInputs = with pkgs; [
    gcc-xtensa-esp32s3-elf-bin
    openocd-esp32-bin
    esp-idf
    esptool

    # Tools required to use ESP-IDF.
    git
    wget
    gnumake

    flex
    bison
    gperf
    pkgconfig

    cmake
    ninja

    ncurses5
  ];
}
