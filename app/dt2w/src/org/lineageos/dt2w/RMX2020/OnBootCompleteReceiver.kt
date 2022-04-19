package org.lineageos.dt2w.RMX2020;

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent

class OnBootCompleteReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        val sIntent = Intent(context, DT2WServiceRMX2020::class.java)
        context.startServiceAsUser(sIntent, UserHandle.CURRENT)
    }
}
