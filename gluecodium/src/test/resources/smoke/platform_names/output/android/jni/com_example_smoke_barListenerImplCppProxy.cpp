/*
 *
 */
#include "com_example_smoke_barListenerImplCppProxy.h"
#include "ArrayConversionUtils.h"
#include "EnumConversion.h"
#include "EnumSetConversion.h"
#include "InstanceConversion.h"
#include "StructConversion.h"
namespace gluecodium
{
namespace jni
{
barListenerImpl_CppProxy::barListenerImpl_CppProxy( JNIEnv* _jenv, JniReference<jobject> globalRef, jint _jHashCode )
    : CppProxyBase( _jenv, std::move( globalRef ), _jHashCode ) {
}
void barListenerImpl_CppProxy::FooMethod( const ::std::string& nBarParameter ) {
    JNIEnv* jniEnv = getJniEnvironment( );
    auto jBarParameter = convert_to_jni( jniEnv, nBarParameter );
    callJavaMethod<void>( "BarMethod", "(Ljava/lang/String;)V", jniEnv , jBarParameter);
    if ( jniEnv->ExceptionCheck( ) )
    {
        jniEnv->ExceptionDescribe( );
        jniEnv->FatalError( "Unhandled exception" );
    }
}
}
}