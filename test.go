package main

import raw "github.com/MRHT-SRProject/LibRawGo/librawgo"

func main() {
	lr := raw.Libraw_init(0)
	raw.Libraw_open_file(lr, "asdf.awr")
	lr.GetImage()
}