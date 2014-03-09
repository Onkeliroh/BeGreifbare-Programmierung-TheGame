// Class for animating a sequence of GIFs

class animation {
  PImage[] images;
  int imageCount;
  int frame;
  
  animation(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      // Use nf() to number format 'i' into four digits
      println("read");
      String filename = imagePrefix + nf(i, 4) + ".gif";
      images[i] = loadImage(filename);
    }
    
    println("Animation loaded with: " + images);
  }
  
  int getHeight()
  {
    return images[0].height;
  }

  int getWidth()
  {
    return images[0].width;
  }

  PImage draw_animation() {
    frame = (frame+1) % imageCount;
    return images[frame];
  }
}
