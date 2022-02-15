/*
 * Copyright (C) 2019 The LineageOS Project
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

#include <gui/SurfaceComposerClient.h>
#include <gui/ISurfaceComposer.h>
#include <ui/DeviceProductInfo.h>
#include <ui/StaticDisplayInfo.h>
#include "ui/DeviceProductInfoLegacy.h"

using android::sp;
using android::status_t;
using android::IBinder;
using android::IGraphicBufferConsumer;
using android::IGraphicBufferProducer;
using android::PixelFormat;
using android::SurfaceControl;
using android::SurfaceComposerClient;

namespace android
{
    /* std::optional<PhysicalDisplayId> android::SurfaceComposerClient::getInternalDisplayToken */
    extern "C" void* _ZN7android21SurfaceComposerClient23getInternalDisplayTokenEv();

    /* sp<IBinder> BpSurfaceComposer::getBuiltInDisplay */
    extern "C" void* _ZN7android21SurfaceComposerClient17getBuiltInDisplayEi(long __attribute__((unused)) id)
    {
        return _ZN7android21SurfaceComposerClient23getInternalDisplayTokenEv();
    }

    /* Pre-S struct */
    struct DisplayInfo {
        ui::DisplayConnectionType connectionType = ui::DisplayConnectionType::Internal;
        float density = 0.f;
        bool secure = false;
        std::optional<DeviceProductInfoLegacy> deviceProductInfo;
    };

    /* status_t SurfaceComposerClient::getStaticDisplayInfo(const sp<IBinder>& display, ui::StaticDisplayInfo* info) */
    extern "C" status_t _ZN7android21SurfaceComposerClient20getStaticDisplayInfoERKNS_2spINS_7IBinderEEEPNS_2ui17StaticDisplayInfoE(const sp<IBinder>& display, ui::StaticDisplayInfo* info);

    /* status_t SurfaceComposerClient::getDisplayInfo(const sp<IBinder>& display, DisplayInfo* info) */
    extern "C" status_t _ZN7android21SurfaceComposerClient14getDisplayInfoERKNS_2spINS_7IBinderEEEPNS_11DisplayInfoE(const sp<IBinder>& display, DisplayInfo* info) {
        ui::StaticDisplayInfo* displayInfo = new ui::StaticDisplayInfo;
        displayInfo->connectionType = info->connectionType;
        displayInfo->density = info->density;
        displayInfo->secure = info->secure;

        return _ZN7android21SurfaceComposerClient20getStaticDisplayInfoERKNS_2spINS_7IBinderEEEPNS_2ui17StaticDisplayInfoE(display, displayInfo);
    }
};
