/*
 * Copyright (C) 2023 PixelPlusUI
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.aosip.device.DeviceSettings;

import android.os.Bundle;
import android.widget.TextView;
import android.util.Log;
import androidx.annotation.Nullable;
import com.android.settingslib.collapsingtoolbar.CollapsingToolbarBaseActivity;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class BatteryHealthActivity extends CollapsingToolbarBaseActivity {
    private static final String TAG = BatteryHealthActivity.class.getSimpleName();
    private TextView batteryHealthTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_battery_health);

        batteryHealthTextView = findViewById(R.id.batteryHealthTextView);

        // Specify the path to the battery health file
        String batteryHealthFile = "/sys/class/power_supply/bms/battery_health";

        // Read and parse the battery health
        String batteryHealth = parseBatteryHealth(batteryHealthFile);

        // Update the TextView with the battery health information
        batteryHealthTextView.setText("Battery Health: " + batteryHealth);
    }

    private String parseBatteryHealth(String file) {
        try {
            return Integer.parseInt(readLine(file)) + " %";
        } catch (IOException ioe) {
            Log.e(TAG, "Cannot read battery Health from " + file, ioe);
        } catch (NumberFormatException nfe) {
            Log.e(TAG, "Read a badly formatted battery Health from " + file, nfe);
        }
        return getResources().getString(R.string.status_unavailable);
    }

    @Nullable
    private String readLine(String filename) throws IOException {
        final BufferedReader reader = new BufferedReader(new FileReader(filename), 256);
        try {
            return reader.readLine();
        } finally {
            reader.close();
        }
    }
}
