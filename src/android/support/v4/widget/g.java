// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.widget.EdgeEffect;
import android.os.Build$VERSION;

public final class g
{
    private static final f TP;
    
    static {
        if (Build$VERSION.SDK_INT < 21) {
            TP = new f();
        }
        else {
            TP = new e();
        }
    }
    
    public static void adE(final EdgeEffect edgeEffect, final float n, final float n2) {
        g.TP.adD(edgeEffect, n, n2);
    }
}
