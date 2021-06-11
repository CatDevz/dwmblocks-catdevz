//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
          /*Command*/                                           /*Update Interval*/   /*Update Signal*/
  //{"", "/opt/dwmblocks-catdevz-git/scripts/_traffic.sh",        1,                    0},
  //{"", "/opt/dwmblocks-catdevz-git/scripts/_weather.sh",        120,                  0},
  //{"", "/opt/dwmblocks-catdevz-git/scripts/_wifi.sh",           1,                    0},
  //{"", "/opt/dwmblocks-catdevz-git/scripts/_brightness.sh",     1,                    0},
  //{"", "/opt/dwmblocks-catdevz-git/scripts/_playerctl.sh",      1,                    0},
  //{"", "/opt/dwmblocks-catdevz-git/scripts/_info.sh",           10,                   0},
    {"", "/opt/dwmblocks-catdevz-git/scripts/_audio.sh",          30,                   10},
    {"", "/opt/dwmblocks-catdevz-git/scripts/_cpu.sh",            1,                    0},
    {"", "/opt/dwmblocks-catdevz-git/scripts/_battery.sh",        1,                    0},
    {"", "/opt/dwmblocks-catdevz-git/scripts/_date.sh",           3600,                 1},
    {"", "/opt/dwmblocks-catdevz-git/scripts/_displaytime.sh",    1,                    0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "\0";
static unsigned int delimLen = 1;
