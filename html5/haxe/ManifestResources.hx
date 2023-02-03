package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_nokia_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_nokiab_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_nokiai_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_nokiaz_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txty4:sizezy4:typey4:TEXTy2:idR1y7:preloadtgoR2i16272R3y4:FONTy9:classNamey31:__ASSET__assets_fonts_nokia_ttfR5y26:assets%2Ffonts%2Fnokia.ttfR6tgoR2i16272R3R7R8y32:__ASSET__assets_fonts_nokiab_ttfR5y27:assets%2Ffonts%2Fnokiab.ttfR6tgoR2i16272R3R7R8y32:__ASSET__assets_fonts_nokiai_ttfR5y27:assets%2Ffonts%2Fnokiai.ttfR6tgoR2i16272R3R7R8y32:__ASSET__assets_fonts_nokiaz_ttfR5y27:assets%2Ffonts%2Fnokiaz.ttfR6tgoR0y28:assets%2Fimages%2FArcher.pngR2i3826R3y5:IMAGER5R17R6tgoR0y32:assets%2Fimages%2FARCHER_ALL.pngR2i85917R3R18R5R19R6tgoR0y27:assets%2Fimages%2FARROW.pngR2i494R3R18R5R20R6tgoR0y26:assets%2Fimages%2FBOSS.pngR2i10049R3R18R5R21R6tgoR0y30:assets%2Fimages%2FforestBG.pngR2i51528R3R18R5R22R6tgoR0y30:assets%2Fimages%2FGameOver.pngR2i17187R3R18R5R23R6tgoR0y30:assets%2Fimages%2FgridTile.pngR2i18397R3R18R5R24R6tgoR0y31:assets%2Fimages%2FgridTile2.pngR2i1882R3R18R5R25R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R4R5R26R6tgoR0y28:assets%2Fimages%2FKnight.pngR2i4214R3R18R5R27R6tgoR0y32:assets%2Fimages%2FKnightMain.pngR2i7080R3R18R5R28R6tgoR0y26:assets%2Fimages%2FMana.pngR2i1148R3R18R5R29R6tgoR0y29:assets%2Fimages%2FNECROBG.pngR2i39230R3R18R5R30R6tgoR0y30:assets%2Fimages%2FNECROBG2.pngR2i96881R3R18R5R31R6tgoR0y30:assets%2Fimages%2FNecroDef.pngR2i54726R3R18R5R32R6tgoR0y31:assets%2Fimages%2FNecroGirl.pngR2i4120R3R18R5R33R6tgoR0y33:assets%2Fimages%2FNECROMANCER.pngR2i42812R3R18R5R34R6tgoR0y30:assets%2Fimages%2FSkeleton.pngR2i3190R3R18R5R35R6tgoR0y34:assets%2Fimages%2FSKELETON_ALL.pngR2i87893R3R18R5R36R6tgoR0y30:assets%2Fimages%2FTANK_ALL.pngR2i32467R3R18R5R37R6tgoR0y31:assets%2Fimages%2Ftutorial1.pngR2i222514R3R18R5R38R6tgoR0y29:assets%2Fimages%2FVictory.pngR2i91343R3R18R5R39R6tgoR0y28:assets%2Fimages%2FZombie.pngR2i2403R3R18R5R40R6tgoR0y32:assets%2Fimages%2FZOMBIE_ALL.pngR2i71746R3R18R5R41R6tgoR2i491970R3y5:SOUNDR5y34:assets%2Fmusic%2FHF_Deployment.oggy9:pathGroupaR43hR6tgoR2i87722R3R42R5y28:assets%2Fmusic%2FHF_Lose.oggR44aR45hR6tgoR2i264496R3R42R5y28:assets%2Fmusic%2FHF_Menu.oggR44aR46hR6tgoR2i735024R3R42R5y34:assets%2Fmusic%2FHF_Simulation.oggR44aR47hR6tgoR2i405361R3R42R5y30:assets%2Fmusic%2FHF_Stage1.oggR44aR48hR6tgoR2i453864R3R42R5y27:assets%2Fmusic%2FHF_Win.oggR44aR49hR6tgoR0y36:assets%2Fmusic%2Fmusic-goes-here.txtR2zR3R4R5R50R6tgoR0y36:assets%2Fsounds%2Fsounds-go-here.txtR2zR3R4R5R51R6tgoR2i2114R3y5:MUSICR5y26:flixel%2Fsounds%2Fbeep.mp3R44aR53y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R52R5y28:flixel%2Fsounds%2Fflixel.mp3R44aR55y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3R42R5R54R44aR53R54hgoR2i33629R3R42R5R56R44aR55R56hgoR2i15744R3R7R8y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R7R8y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R18R5R61R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R18R5R62R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R18R5R63R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R18R5R64R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R18R5R65R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R18R5R66R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R18R5R67R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R18R5R68R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R18R5R69R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R18R5R70R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R18R5R71R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R18R5R72R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R18R5R73R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R18R5R74R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R18R5R75R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R18R5R76R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R18R5R77R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R18R5R78R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R18R5R79R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R18R5R80R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R18R5R81R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R18R5R82R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R18R5R83R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R18R5R84R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R18R5R85R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R18R5R86R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R18R5R87R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R18R5R88R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R18R5R89R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R4R5R90R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R4R5R91R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R4R5R92R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_nokia_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiab_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiai_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiaz_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_archer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_archer_all_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_boss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_forestbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gameover_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gridtile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gridtile2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_knight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_knightmain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mana_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_necrobg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_necrobg2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_necrodef_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_necrogirl_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_necromancer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_skeleton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_skeleton_all_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_tank_all_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_tutorial1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_victory_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_zombie_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_zombie_all_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_hf_deployment_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_hf_lose_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_hf_menu_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_hf_simulation_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_hf_stage1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_hf_win_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokia.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_nokia_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/nokiab.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiab_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/nokiai.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiai_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/nokiaz.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiaz_ttf extends lime.text.Font {}
@:keep @:image("assets/images/Archer.png") @:noCompletion #if display private #end class __ASSET__assets_images_archer_png extends lime.graphics.Image {}
@:keep @:image("assets/images/ARCHER_ALL.png") @:noCompletion #if display private #end class __ASSET__assets_images_archer_all_png extends lime.graphics.Image {}
@:keep @:image("assets/images/ARROW.png") @:noCompletion #if display private #end class __ASSET__assets_images_arrow_png extends lime.graphics.Image {}
@:keep @:image("assets/images/BOSS.png") @:noCompletion #if display private #end class __ASSET__assets_images_boss_png extends lime.graphics.Image {}
@:keep @:image("assets/images/forestBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_forestbg_png extends lime.graphics.Image {}
@:keep @:image("assets/images/GameOver.png") @:noCompletion #if display private #end class __ASSET__assets_images_gameover_png extends lime.graphics.Image {}
@:keep @:image("assets/images/gridTile.png") @:noCompletion #if display private #end class __ASSET__assets_images_gridtile_png extends lime.graphics.Image {}
@:keep @:image("assets/images/gridTile2.png") @:noCompletion #if display private #end class __ASSET__assets_images_gridtile2_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/Knight.png") @:noCompletion #if display private #end class __ASSET__assets_images_knight_png extends lime.graphics.Image {}
@:keep @:image("assets/images/KnightMain.png") @:noCompletion #if display private #end class __ASSET__assets_images_knightmain_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Mana.png") @:noCompletion #if display private #end class __ASSET__assets_images_mana_png extends lime.graphics.Image {}
@:keep @:image("assets/images/NECROBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_necrobg_png extends lime.graphics.Image {}
@:keep @:image("assets/images/NECROBG2.png") @:noCompletion #if display private #end class __ASSET__assets_images_necrobg2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/NecroDef.png") @:noCompletion #if display private #end class __ASSET__assets_images_necrodef_png extends lime.graphics.Image {}
@:keep @:image("assets/images/NecroGirl.png") @:noCompletion #if display private #end class __ASSET__assets_images_necrogirl_png extends lime.graphics.Image {}
@:keep @:image("assets/images/NECROMANCER.png") @:noCompletion #if display private #end class __ASSET__assets_images_necromancer_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Skeleton.png") @:noCompletion #if display private #end class __ASSET__assets_images_skeleton_png extends lime.graphics.Image {}
@:keep @:image("assets/images/SKELETON_ALL.png") @:noCompletion #if display private #end class __ASSET__assets_images_skeleton_all_png extends lime.graphics.Image {}
@:keep @:image("assets/images/TANK_ALL.png") @:noCompletion #if display private #end class __ASSET__assets_images_tank_all_png extends lime.graphics.Image {}
@:keep @:image("assets/images/tutorial1.png") @:noCompletion #if display private #end class __ASSET__assets_images_tutorial1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Victory.png") @:noCompletion #if display private #end class __ASSET__assets_images_victory_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Zombie.png") @:noCompletion #if display private #end class __ASSET__assets_images_zombie_png extends lime.graphics.Image {}
@:keep @:image("assets/images/ZOMBIE_ALL.png") @:noCompletion #if display private #end class __ASSET__assets_images_zombie_all_png extends lime.graphics.Image {}
@:keep @:file("assets/music/HF_Deployment.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_hf_deployment_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/HF_Lose.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_hf_lose_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/HF_Menu.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_hf_menu_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/HF_Simulation.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_hf_simulation_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/HF_Stage1.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_hf_stage1_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/HF_Win.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_hf_win_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_nokia_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_nokia_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/nokia"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -384; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_nokiab_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiab_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/nokiab"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -384; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_nokiai_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiai_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/nokiai"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -384; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_nokiaz_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_nokiaz_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/nokiaz"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -384; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_nokia_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_nokia_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_nokia_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_nokiab_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_nokiab_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_nokiab_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_nokiai_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_nokiai_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_nokiai_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_nokiaz_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_nokiaz_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_nokiaz_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_nokia_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_nokia_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_nokia_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_nokiab_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_nokiab_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_nokiab_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_nokiai_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_nokiai_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_nokiai_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_nokiaz_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_nokiaz_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_nokiaz_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
