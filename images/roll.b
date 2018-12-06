#define roll_width 117
#define roll_height 151
static unsigned char roll_bits[] = {
   0xc0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x1f, 0x00, 0xfc, 0x03,
   0x80, 0x7f, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20,
   0x00, 0x02, 0x04, 0x40, 0x80, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x40, 0x00, 0x01, 0x08, 0x20, 0x00, 0x01, 0x08, 0x00, 0x00,
   0x00, 0xe0, 0x00, 0x00, 0x00, 0x80, 0x80, 0x00, 0x10, 0x10, 0x00, 0x02,
   0x04, 0x00, 0x00, 0x00, 0xf8, 0x03, 0x00, 0x00, 0x00, 0x41, 0x00, 0x20,
   0x08, 0x00, 0x04, 0x02, 0x00, 0x00, 0x00, 0xbe, 0x0f, 0x00, 0x00, 0x00,
   0x22, 0x00, 0x40, 0x04, 0x00, 0x08, 0x01, 0x00, 0x00, 0x00, 0x06, 0x0c,
   0x00, 0x00, 0x00, 0x14, 0x00, 0x80, 0x02, 0x00, 0x10, 0x01, 0x00, 0x00,
   0x00, 0x03, 0x18, 0x00, 0x00, 0x00, 0x14, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x01, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x14, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x01, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00,
   0x14, 0x00, 0x80, 0x02, 0x00, 0x10, 0x01, 0x00, 0x00, 0x00, 0x03, 0x30,
   0x00, 0x00, 0x00, 0x14, 0x00, 0x80, 0x02, 0x00, 0x10, 0x01, 0x00, 0x00,
   0x80, 0x07, 0x38, 0x00, 0x00, 0x00, 0x14, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x01, 0x00, 0x00, 0xc0, 0x0f, 0x18, 0x00, 0x00, 0x00, 0x14, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x01, 0x00, 0x00, 0xe0, 0x1f, 0x18, 0x00, 0x00, 0x00,
   0x14, 0x00, 0x80, 0x02, 0x00, 0x10, 0x02, 0x00, 0x00, 0x00, 0x07, 0x0c,
   0x00, 0x00, 0x00, 0x12, 0x00, 0x80, 0x02, 0x00, 0x10, 0x04, 0x00, 0x00,
   0x00, 0xbe, 0x0f, 0x00, 0x00, 0x00, 0x11, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x08, 0x00, 0x00, 0x00, 0xf8, 0x03, 0x00, 0x00, 0x80, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x10, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x00, 0x40,
   0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x20, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0xc0, 0xff, 0xff,
   0xff, 0xff, 0xff, 0xff, 0xff, 0x1f, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0xc0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x1f,
   0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x20, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x10, 0x00, 0x00,
   0x00, 0x70, 0x00, 0x00, 0x00, 0x40, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x08, 0x00, 0x00, 0x00, 0xfc, 0x01, 0x00, 0x00, 0x80, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x04, 0x00, 0x00, 0x00, 0xdf, 0x07, 0x00, 0x00, 0x00,
   0x11, 0x00, 0x80, 0x02, 0x00, 0x10, 0x02, 0x00, 0x00, 0x00, 0x03, 0x0e,
   0x00, 0x00, 0x00, 0x12, 0x00, 0x80, 0x02, 0x00, 0x10, 0x01, 0x00, 0x00,
   0x80, 0x81, 0x7f, 0x00, 0x00, 0x00, 0x14, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x01, 0x00, 0x00, 0x80, 0x01, 0x3f, 0x00, 0x00, 0x00, 0x14, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x01, 0x00, 0x00, 0xc0, 0x01, 0x1e, 0x00, 0x00, 0x00,
   0x14, 0x08, 0x80, 0x02, 0x00, 0x10, 0x01, 0x00, 0x00, 0xc0, 0x00, 0x0c,
   0x00, 0x00, 0x00, 0x14, 0x18, 0x80, 0x02, 0x0e, 0x10, 0x01, 0x00, 0x00,
   0xc0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x14, 0x38, 0x80, 0x82, 0x3f, 0x10,
   0x01, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00, 0x14, 0x7c, 0x82,
   0xe2, 0xfb, 0x10, 0x01, 0x00, 0x00, 0x80, 0x01, 0x0c, 0x00, 0x00, 0x00,
   0x14, 0x7e, 0x8e, 0x62, 0xc0, 0x10, 0x01, 0x00, 0x00, 0x00, 0x03, 0x06,
   0x00, 0x00, 0x00, 0x14, 0x3e, 0x8c, 0x32, 0x80, 0x11, 0x02, 0x00, 0x00,
   0x00, 0xdf, 0x07, 0x00, 0x00, 0x00, 0x12, 0x1b, 0x98, 0x32, 0x80, 0x11,
   0x04, 0x00, 0x00, 0x00, 0xfc, 0x01, 0x00, 0x00, 0x00, 0x11, 0x0b, 0x98,
   0x3a, 0x80, 0x13, 0x08, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x80,
   0x90, 0x03, 0xb8, 0x1a, 0x00, 0x13, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x40, 0x90, 0x01, 0xb0, 0x3a, 0x80, 0x13, 0x20, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x90, 0x03, 0xb8, 0x32, 0xa0, 0x11,
   0xc0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x1f, 0x10, 0x03, 0x98,
   0x32, 0xb0, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x10, 0x03, 0x98, 0x62, 0xf8, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x10, 0x06, 0x8c, 0xe2, 0xfc, 0x10, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0xbe, 0x8f, 0x82, 0x7c, 0x10,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0xf8, 0x83,
   0x02, 0x38, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x10, 0xe0, 0x80, 0x02, 0x30, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x20, 0x10, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x02, 0x00, 0x10,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80,
   0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x20, 0x00, 0x40, 0x04, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x40, 0x00, 0x20, 0x08, 0x00, 0x04, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x10, 0x10, 0x00, 0x02,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x08,
   0x20, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x02, 0x04, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0xfc, 0x03, 0x80, 0x7f, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0xc0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x1f, 0x00, 0xfc, 0x03,
   0x80, 0x7f, 0x00, 0xe0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x3f,
   0x00, 0xfe, 0x07, 0xc0, 0xff, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x60, 0x00, 0x03, 0x0c, 0x60, 0x80, 0x01, 0x18, 0x00, 0x00,
   0x00, 0xc0, 0x01, 0x00, 0x00, 0xc0, 0x80, 0x01, 0x18, 0x30, 0x00, 0x03,
   0x0c, 0x00, 0x00, 0x00, 0xf0, 0x07, 0x00, 0x00, 0x80, 0xc1, 0x00, 0x30,
   0x18, 0x00, 0x06, 0x06, 0x00, 0x00, 0x00, 0x7c, 0x1f, 0x00, 0x00, 0x00,
   0x63, 0x00, 0x60, 0x0c, 0x00, 0x0c, 0x03, 0x00, 0x00, 0x00, 0x0c, 0x18,
   0x00, 0x00, 0x00, 0x36, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x03, 0x00, 0x00,
   0x00, 0x06, 0x30, 0x00, 0x00, 0x00, 0x36, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x03, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x36, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x03, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00,
   0x36, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x03, 0x00, 0x00, 0x00, 0x06, 0x60,
   0x00, 0x00, 0x00, 0x36, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x03, 0x00, 0x00,
   0x00, 0x0f, 0x70, 0x00, 0x00, 0x00, 0x36, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x03, 0x00, 0x00, 0x80, 0x1f, 0x30, 0x00, 0x00, 0x00, 0x36, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x3f, 0x30, 0x00, 0x00, 0x00,
   0x36, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x06, 0x00, 0x00, 0x00, 0x0e, 0x18,
   0x00, 0x00, 0x00, 0x33, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x0c, 0x00, 0x00,
   0x00, 0x7c, 0x1f, 0x00, 0x00, 0x80, 0x31, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x18, 0x00, 0x00, 0x00, 0xf0, 0x07, 0x00, 0x00, 0xc0, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x30, 0x00, 0x00, 0x00, 0xc0, 0x01, 0x00, 0x00, 0x60,
   0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0xe0, 0xff, 0xff, 0xff, 0xff, 0xff,
   0xff, 0xff, 0x3f, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0xc0, 0xff, 0xff,
   0xff, 0xff, 0xff, 0xff, 0xff, 0x1f, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0xc0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x1f,
   0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0xe0, 0xff, 0xff, 0xff, 0xff, 0xff,
   0xff, 0xff, 0x3f, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x30, 0x00, 0x00,
   0x00, 0x70, 0x00, 0x00, 0x00, 0x60, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x18, 0x00, 0x00, 0x00, 0xfc, 0x01, 0x00, 0x00, 0xc0, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x0c, 0x00, 0x00, 0x00, 0xdf, 0x07, 0x00, 0x00, 0x80,
   0x31, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x06, 0x00, 0x00, 0x00, 0x03, 0x0e,
   0x00, 0x00, 0x00, 0x33, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x03, 0x00, 0x00,
   0x80, 0x81, 0x7f, 0x00, 0x00, 0x00, 0x36, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x03, 0x00, 0x00, 0x80, 0x01, 0x3f, 0x00, 0x00, 0x00, 0x36, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x01, 0x1e, 0x00, 0x00, 0x00,
   0x36, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x00, 0x0c,
   0x00, 0x00, 0x00, 0x36, 0x04, 0xc0, 0x06, 0x1c, 0x18, 0x03, 0x00, 0x00,
   0xc0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x36, 0x0c, 0xc0, 0x06, 0x7f, 0x18,
   0x03, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00, 0x36, 0x1c, 0xc0,
   0xc6, 0xf7, 0x19, 0x03, 0x00, 0x00, 0x80, 0x01, 0x0c, 0x00, 0x00, 0x00,
   0x36, 0x3e, 0xc1, 0xc6, 0x80, 0x19, 0x03, 0x00, 0x00, 0x00, 0x03, 0x06,
   0x00, 0x00, 0x00, 0x36, 0x3f, 0xc7, 0x66, 0x00, 0x1b, 0x06, 0x00, 0x00,
   0x00, 0xdf, 0x07, 0x00, 0x00, 0x00, 0x33, 0x1f, 0xc6, 0x66, 0x00, 0x1b,
   0x0c, 0x00, 0x00, 0x00, 0xfc, 0x01, 0x00, 0x00, 0x80, 0xb1, 0x0d, 0xcc,
   0x76, 0x00, 0x1f, 0x18, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xc0,
   0xb0, 0x05, 0xcc, 0x36, 0x00, 0x1e, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x60, 0xf0, 0x01, 0xdc, 0x76, 0x00, 0x1f, 0xe0, 0xff, 0xff,
   0xff, 0xff, 0xff, 0xff, 0xff, 0x3f, 0xf0, 0x00, 0xd8, 0x66, 0x40, 0x1b,
   0xc0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x1f, 0xf0, 0x01, 0xdc,
   0x66, 0x60, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0xb0, 0x01, 0xcc, 0xc6, 0xf0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0xb0, 0x01, 0xcc, 0xc6, 0xf9, 0x19, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x03, 0xc6, 0x06, 0xf9, 0x18,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0xdf, 0xc7,
   0x06, 0x70, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x30, 0xfc, 0xc1, 0x06, 0x60, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x30, 0x70, 0xc0, 0x06, 0x40, 0x18, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0, 0x06, 0x00, 0x18,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xc0,
   0x06, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x60, 0x00, 0x60, 0x0c, 0x00, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0xc0, 0x00, 0x30, 0x18, 0x00, 0x06, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x01, 0x18, 0x30, 0x00, 0x03,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0c,
   0x60, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0xfe, 0x07, 0xc0, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0xfc, 0x03, 0x80, 0x7f, 0x00};