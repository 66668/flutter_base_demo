package com.sjy.flutter_base_demo

import android.app.Activity
import android.content.Context
import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.platform.PlatformViewRegistry
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.view.FlutterView
import io.flutter.view.TextureRegistry

class MainActivity: FlutterActivity(), PluginRegistry.Registrar {
  override fun platformViewRegistry(): PlatformViewRegistry {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun publish(p0: Any?): PluginRegistry.Registrar {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun view(): FlutterView {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun addRequestPermissionsResultListener(p0: PluginRegistry.RequestPermissionsResultListener?): PluginRegistry.Registrar {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun textures(): TextureRegistry {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun addUserLeaveHintListener(p0: PluginRegistry.UserLeaveHintListener?): PluginRegistry.Registrar {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun lookupKeyForAsset(p0: String?): String {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun lookupKeyForAsset(p0: String?, p1: String?): String {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun addNewIntentListener(p0: PluginRegistry.NewIntentListener?): PluginRegistry.Registrar {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun messenger(): BinaryMessenger {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun context(): Context {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun addViewDestroyListener(p0: PluginRegistry.ViewDestroyListener?): PluginRegistry.Registrar {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun addActivityResultListener(p0: PluginRegistry.ActivityResultListener?): PluginRegistry.Registrar {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun activity(): Activity {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun activeContext(): Context {
    TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
  }

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
//    GeneratedPluginRegistrant.registerWithB(this)
  }
}
