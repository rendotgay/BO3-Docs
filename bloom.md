# Bloom
Makes bright light glow
1. In the `Entity Browser` search `Pbg` and add a `pbg_box`
2. Resize the box so your camera can sit comfortably in it
3. Set the `USE_BLOOM` KVP to `✅ True` and set the `bloom_lvi` to one you like (try starting with `mp_apartments`)
4. Once you found the bloom you like, copy the `bloom_lvi` value and delete the `pbg_box`
5. With nothing selected, in your `worldspawn` add the KVP `vbloom` and set the value to the `bloom_lvi` value you copied