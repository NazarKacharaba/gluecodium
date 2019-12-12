// -------------------------------------------------------------------------------------------------
//
//
// -------------------------------------------------------------------------------------------------
#pragma once
#include "gluecodium/Export.h"
#include "gluecodium/Hash.h"
#include "gluecodium/UnorderedMapHash.h"
#include "gluecodium/VectorHash.h"
#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>
namespace examples {
/**
 * This is some very useful interface.
 */
class _GLUECODIUM_CPP_EXPORT Comments {
public:
    Comments();
    virtual ~Comments() = 0;
public:
    /**
     * This is some very useful enum.
     */
    enum class SomeEnum {
        /**
         * Not quite useful
         */
        USELESS,
        /**
         * Somewhat useful
         */
        USEFUL
    };
    /**
     * This is some very useful typedef.
     */
    using Usefulness = bool;
    /**
     * This is some very useful array.
     */
    using SomeArray = ::std::vector< ::std::string >;
    /**
     * This is some very useful map.
     */
    using SomeMap = ::std::unordered_map< ::std::string, ::examples::Comments::Usefulness >;
    /**
     * This is some very useful struct.
     */
    struct _GLUECODIUM_CPP_EXPORT SomeStruct {
        /**
         * How useful this struct is
         */
        ::examples::Comments::Usefulness some_field;
        SomeStruct( );
        SomeStruct( const ::examples::Comments::Usefulness some_field );
    };
    /**
     * This is some very useful constant.
     */
    _GLUECODIUM_CPP_EXPORT static const ::examples::Comments::Usefulness VERY_USEFUL;
public:
    /**
     * This is some very useful method that measures the usefulness of its input.
     * \param[in] input Very useful input parameter
     * \return Usefulness of the input
     */
    virtual ::examples::Comments::Usefulness some_method( const ::std::string& input ) = 0;
    /**
     * Gets some very useful property.
     * \return Some very useful property.
     */
    virtual ::examples::Comments::Usefulness is_some_property(  ) const = 0;
    /**
     * Sets some very useful property.
     * \param[in] value Some very useful property.
     */
    virtual void set_some_property( const ::examples::Comments::Usefulness value ) = 0;
};
}
namespace gluecodium {
template<>
struct hash< ::examples::Comments::SomeEnum > {
    _GLUECODIUM_CPP_EXPORT std::size_t operator( )( const ::examples::Comments::SomeEnum& t ) const;
};
}