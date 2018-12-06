#define xor_width 41
#define xor_height 82
static unsigned char xor_bits[] = {
   0xf9, 0x7f, 0x00, 0x00, 0x01, 0x00, 0x12, 0x80, 0x01, 0x80, 0x02, 0x00,
   0x12, 0x00, 0x06, 0x40, 0x04, 0x00, 0x24, 0x00, 0x08, 0x20, 0x08, 0x00,
   0x24, 0x00, 0x10, 0x10, 0x10, 0x00, 0x48, 0x00, 0x20, 0x08, 0x20, 0x00,
   0x48, 0x00, 0x40, 0x08, 0x20, 0x00, 0x48, 0x00, 0x80, 0x04, 0x40, 0x00,
   0x48, 0x00, 0x40, 0x04, 0x40, 0x00, 0x48, 0x00, 0x20, 0x02, 0x80, 0x00,
   0x24, 0x00, 0x10, 0x02, 0x80, 0x00, 0x24, 0x00, 0x08, 0x02, 0x80, 0x00,
   0x12, 0x00, 0x06, 0x02, 0x80, 0x00, 0x12, 0x80, 0x01, 0x02, 0x80, 0x00,
   0xf9, 0x7f, 0x00, 0x02, 0x80, 0x00, 0x00, 0x00, 0x00, 0x02, 0x80, 0x00,
   0x01, 0x40, 0x00, 0x02, 0x80, 0x00, 0x06, 0x30, 0x00, 0xc2, 0x87, 0x00,
   0x18, 0x0c, 0x00, 0x32, 0x98, 0x00, 0xe1, 0x43, 0x00, 0x0e, 0xe0, 0x00,
   0x07, 0x70, 0x00, 0xc2, 0x87, 0x00, 0x19, 0x4c, 0x00, 0x30, 0x18, 0x00,
   0xe1, 0x43, 0x00, 0x0c, 0x60, 0x00, 0x01, 0x40, 0x00, 0x02, 0x80, 0x00,
   0x01, 0x40, 0x00, 0x00, 0x00, 0x00, 0x01, 0x40, 0x00, 0xfe, 0x9f, 0x00,
   0x01, 0x40, 0x80, 0x01, 0x48, 0x00, 0x01, 0x40, 0x60, 0x00, 0x48, 0x00,
   0x01, 0x40, 0x10, 0x00, 0x24, 0x00, 0x01, 0x40, 0x08, 0x00, 0x24, 0x00,
   0x01, 0x40, 0x04, 0x00, 0x12, 0x00, 0x02, 0x20, 0x02, 0x00, 0x12, 0x00,
   0x02, 0x20, 0x01, 0x00, 0x12, 0x00, 0x04, 0x10, 0x02, 0x00, 0x12, 0x00,
   0x04, 0x10, 0x04, 0x00, 0x12, 0x00, 0x08, 0x08, 0x08, 0x00, 0x24, 0x00,
   0x10, 0x04, 0x10, 0x00, 0x24, 0x00, 0x20, 0x02, 0x60, 0x00, 0x48, 0x00,
   0x40, 0x01, 0x80, 0x01, 0x48, 0x00, 0x80, 0x00, 0x00, 0xfe, 0x9f, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf3, 0x7f, 0x00, 0x00, 0x01, 0x00,
   0xf6, 0xff, 0x01, 0x80, 0x03, 0x00, 0x66, 0x80, 0x07, 0xc0, 0x06, 0x00,
   0xcc, 0x00, 0x0e, 0x60, 0x0c, 0x00, 0xcc, 0x00, 0x18, 0x30, 0x18, 0x00,
   0x98, 0x01, 0x30, 0x18, 0x30, 0x00, 0x98, 0x01, 0x60, 0x18, 0x30, 0x00,
   0x98, 0x01, 0xc0, 0x0c, 0x60, 0x00, 0x98, 0x01, 0x60, 0x0c, 0x60, 0x00,
   0x98, 0x01, 0x30, 0x06, 0xc0, 0x00, 0xcc, 0x00, 0x18, 0x06, 0xc0, 0x00,
   0xcc, 0x00, 0x0e, 0x06, 0xc0, 0x00, 0x66, 0x80, 0x07, 0x06, 0xc0, 0x00,
   0xf6, 0xff, 0x01, 0x06, 0xc0, 0x00, 0xf3, 0x7f, 0x00, 0x06, 0xc0, 0x00,
   0x00, 0x00, 0x00, 0xc6, 0xc7, 0x00, 0x01, 0x40, 0x00, 0xf6, 0xdf, 0x00,
   0x07, 0x70, 0x00, 0x3e, 0xf8, 0x00, 0x1e, 0x3c, 0x00, 0x0e, 0xe0, 0x00,
   0xf8, 0x0f, 0x00, 0xc6, 0xc7, 0x00, 0xe3, 0x63, 0x00, 0xf0, 0x1f, 0x00,
   0x07, 0x70, 0x00, 0x3c, 0x78, 0x00, 0x1f, 0x7c, 0x00, 0x0e, 0xe0, 0x00,
   0xfb, 0x6f, 0x00, 0x02, 0x80, 0x00, 0xe3, 0x63, 0x00, 0x00, 0x00, 0x00,
   0x03, 0x60, 0x00, 0xfe, 0xcf, 0x00, 0x03, 0x60, 0x80, 0xff, 0x6f, 0x00,
   0x03, 0x60, 0xe0, 0x01, 0x66, 0x00, 0x03, 0x60, 0x70, 0x00, 0x33, 0x00,
   0x03, 0x60, 0x18, 0x00, 0x33, 0x00, 0x03, 0x60, 0x0c, 0x80, 0x19, 0x00,
   0x06, 0x30, 0x06, 0x80, 0x19, 0x00, 0x06, 0x30, 0x03, 0x80, 0x19, 0x00,
   0x0c, 0x18, 0x06, 0x80, 0x19, 0x00, 0x0c, 0x18, 0x0c, 0x80, 0x19, 0x00,
   0x18, 0x0c, 0x18, 0x00, 0x33, 0x00, 0x30, 0x06, 0x70, 0x00, 0x33, 0x00,
   0x60, 0x03, 0xe0, 0x01, 0x66, 0x00, 0xc0, 0x01, 0x80, 0xff, 0x6f, 0x00,
   0x80, 0x00, 0x00, 0xfe, 0xcf, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
