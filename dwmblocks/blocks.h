#pragma once

static const Block blocks[] = {
        {"DISK: ", "~/sh/disk.sh", 3600, 0}, 
	{"MEM: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g", 30, 0},
	{"DATE: ", "date '+%b %d (%A) %I:%M%p'", 5, 0},
};

static char delim[] = "   |   ";
