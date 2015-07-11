import Main;

import snow.Snow;
import snow.types.Types.SnowConfig;

class SnowApp {

    public static var _host : Main;
    public static var _snow : Snow;

    public static function main () {

            //Create the runtime
        _snow = new Snow();
            //Create the app class, give it to the bootstrapper
        _host = new Main();

        var _snow_config : SnowConfig = {
            has_loop : true,
            config_custom_assets : false,
            config_custom_runtime : false,
            config_runtime_path : 'config.json',
            config_assets_path : 'manifest',
            app_package : 'org.snowkit.snowbasic'
        };

            //Start up
        _snow.init( _snow_config, _host );

    } //main

} //SnowApp
