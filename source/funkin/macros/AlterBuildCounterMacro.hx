package funkin.macros;

#if !macro
import haxe.macro.Expr.Field;
import haxe.macro.Context;
#end
#if sys
import sys.io.File;
#end

/**
 * Macro that loads the current build number from `ATbuildnumber.txt`, then make it available as an integer.
 * 
 * `ATbuildnumber.txt` is automatically incremented when the engine is launched with `lime test windows`.
 */
class AlterBuildCounterMacro {
    /**
     * Returns the obtained build number.
     */
    public static macro function getATBuildNumber():haxe.macro.Expr.ExprOf<Int> {
        #if !display
        var ATbuildNum:Int = Std.parseInt(File.getContent("ATbuildnumber.txt"));
        return macro $v{ATbuildNum+1};
        #else
        return macro $v{0};
        #end
    }
}