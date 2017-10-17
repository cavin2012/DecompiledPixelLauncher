// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.Looper;
import com.android.launcher3.util.LooperIdleLock;
import java.util.Collection;
import android.util.Log;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.InvariantDeviceProfile;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import java.util.HashSet;
import com.android.launcher3.ItemInfo;
import java.util.Iterator;
import com.android.launcher3.LauncherAppWidgetInfo;
import java.util.ArrayList;
import com.android.launcher3.MainThreadExecutor;
import java.lang.ref.WeakReference;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.ViewOnDrawExecutor;
import com.android.launcher3.LauncherModel$Callbacks;
import java.util.concurrent.Executor;

final class LoaderResults$3 implements Runnable
{
    final /* synthetic */ LoaderResults this$0;
    final /* synthetic */ Executor val$deferredExecutor;
    final /* synthetic */ boolean val$validFirstPage;
    
    LoaderResults$3(final LoaderResults this$0, final boolean val$validFirstPage, final Executor val$deferredExecutor) {
        this.this$0 = this$0;
        this.val$validFirstPage = val$validFirstPage;
        this.val$deferredExecutor = val$deferredExecutor;
    }
    
    public void run() {
        ViewOnDrawExecutor viewOnDrawExecutor = null;
        final LauncherModel$Callbacks launcherModel$Callbacks = (LauncherModel$Callbacks)this.this$0.mCallbacks.get();
        if (launcherModel$Callbacks != null) {
            if (this.val$validFirstPage) {
                viewOnDrawExecutor = (ViewOnDrawExecutor)this.val$deferredExecutor;
            }
            launcherModel$Callbacks.finishFirstPageBind(viewOnDrawExecutor);
        }
    }
}
