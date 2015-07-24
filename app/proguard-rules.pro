# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\adt-bundle-windows-x86_64-20140702\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-keep class * extends java.util.ListResourceBundle {
  protected Object[][] getContents();
}

# Skip warning
-dontwarn rx.**
-dontwarn retrofit.appengine.UrlFetchClient
-dontwarn com.squareup.okhttp.**
-dontwarn okio.**

# Keep GSON and annotation
-keep class com.google.gson.** { *; }
-keepnames @com.google.android.gms.common.annotation.KeepName class *.
-keepattributes Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keepclassmembernames class * {
  @com.google.android.gms.common.annotation.KeepName *;
}

# Keep retrofit
-keep class retrofit.** { *; }
-keep interface retrofit.* { *; }
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }
-keepclasseswithmembers class * {
    @retrofit.* <methods>;
  }

-keep class com.google.inject.* { *; }
-keep class org.apache.http.* { *; }
-keep class org.apache.james.mime4j.* { *; }
-keep class javax.inject.* { *; }

-keep class sun.misc.Unsafe { *; }
-keep class **$$ViewInjector { *; }

-renamesourcefileattribute SourceFile

# Keep the pojos used by GSON or Jackson
-keep class com.ezitag.delegatetracker.model.**{ *; }

