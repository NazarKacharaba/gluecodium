// -------------------------------------------------------------------------------------------------
//
//
// -------------------------------------------------------------------------------------------------
#pragma once
#include "examples/CalculatorListener.h"
#include "gluecodium/Export.h"
#include <memory>
namespace examples {
    class Calculator;
    class CalculatorListener;
}
namespace examples {
class _GLUECODIUM_CPP_EXPORT Calculator {
public:
    Calculator();
    virtual ~Calculator() = 0;
public:
    /**
     *
     * \return @NotNull
     */
    static ::std::shared_ptr< ::examples::Calculator > create(  );
    /**
     *
     * \param[in] listener @NotNull
     */
    virtual void register_listener( const ::std::shared_ptr< ::examples::CalculatorListener >& listener ) = 0;
    /**
     *
     * \param[in] listener @NotNull
     */
    virtual void unregister_listener( const ::std::shared_ptr< ::examples::CalculatorListener >& listener ) = 0;
    virtual void calculate(  ) = 0;
};
}