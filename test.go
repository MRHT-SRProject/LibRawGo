package main

import raw "github.com/MRHT-SRProject/LibRawGo/librawgo"

func main() {
	lr := raw.NewLibRaw()
	params := lr.Output_params_ptr()
	params.SetHalf_size(1)
	params.SetOutput_bps(16)
	lr.Open_file("/home/rich/code/camcapture/libraw/city.ARW")
	lr.Unpack()
	lr.Raw2image()
	img := lr.GetImgdata()
	print(img)
}