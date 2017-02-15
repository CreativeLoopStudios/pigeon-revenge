if (self.isGoingToDown) {
    if(image_xscale >= 0.9){
        script_execute(scale_ease(self,1,1,0.7,0.3,30));
    }
    if(image_xscale >= 0.7 && image_xscale < 0.9){
        
        if(image_xscale >= 0.7 && image_xscale <= 0.73){
            self.isGoingToDown = false;
            self.isGoingToUp = true;
            depth = -19
        }else{
            script_execute(scale_ease(self,1,1,0.3,0.3,60));
        }
    }
}else if(!self.isGoingToDown && self.isGoingToUp) {
    self.isGoingToUp = true;
    
    if(image_xscale < 0.7){
        script_execute(scale_ease(self,image_xscale,image_yscale,1.7,1,30));
    }
    if(image_xscale >= 0.7 && image_xscale < 1.0){
        
        if(image_xscale >= 0.95){
            self.isGoingToUp = false;
            depth = -21
        }else{
            script_execute(scale_ease(self,image_xscale,image_yscale,1.0,1.0,15));
        }
    }
}
