//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <openiothub_vlans/openiothub_vlans_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) openiothub_vlans_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "OpeniothubVlansPlugin");
  openiothub_vlans_plugin_register_with_registrar(openiothub_vlans_registrar);
}
