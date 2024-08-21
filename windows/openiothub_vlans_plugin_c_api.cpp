#include "include/openiothub_vlans/openiothub_vlans_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "openiothub_vlans_plugin.h"

void OpeniothubVlansPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  openiothub_vlans::OpeniothubVlansPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
