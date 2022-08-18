/*
 *
 */
package com.example.smoke;
import android.support.annotation.NonNull;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Set;
public final class EnumSets {
    public static final Set<GenericTypesWithCompoundTypes.SomeEnum> ENUM_SET_CONST = EnumSet.of(GenericTypesWithCompoundTypes.SomeEnum.FOO, GenericTypesWithCompoundTypes.SomeEnum.BAR);
    @NonNull
    public Set<GenericTypesWithCompoundTypes.SomeEnum> enumSetField;
    public EnumSets() {
        this.enumSetField = EnumSet.noneOf(GenericTypesWithCompoundTypes.SomeEnum.class);
    }
}
