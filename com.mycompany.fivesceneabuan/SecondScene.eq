
/*
 * SecondScene
 * Created by Eqela Studio 2.0b7.4
 */

public class SecondScene : SEScene
{
	
	SESprite image1;
	SESprite text;
	String mainText;
		
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("blue"), get_scene_width(), get_scene_height());
		rsc.prepare_image("exceed", "ft", get_scene_width(), get_scene_height());
		image1= add_sprite_for_image(SEImage.for_resource("exceed"));
		image1.move(0,0);
		rsc.prepare_font("myfont", "arial bold color=red", 40);
		mainText = "Press here to go to  Main Screen";
		text = add_sprite_for_text(mainText, "myfont");
		text.move(get_scene_width()- text.get_width(), get_scene_height() - text.get_height());

		image1.move(0,0);
	}
	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(get_scene_width()- text.get_width(), get_scene_height() - text.get_height(),get_scene_width(), get_scene_height())){
			switch_scene(new MainScene());
		}
		}

	public void cleanup() {
		base.cleanup();
	}
}
