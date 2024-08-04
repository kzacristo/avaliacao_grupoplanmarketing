<script setup>
import ApplicationLogo from '@/Components/ApplicationLogo.vue';
import { Link } from '@inertiajs/vue3';
</script>

<template>
    <div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">
        <div class="flex flex-col sm:flex-row justify-center items-center">
            <div class="md:w-1/2">
                <div :class="animate" class="w-[300px] h-[300px] bg-slate-700 rounded-2xl">
                    <img class="md:hidden w-full h-full object-cover" src="../assets/assets_login/logo-black.png" alt=""
                        loading="lazy" />
                        <img class="md:flex hidden w-[300px] h-[300px]" src="../assets/assets_login/logo-white.png" alt="" @load="animate = ''"
                            loading="lazy" />
                </div>
            </div>
            <div class="md:w-1/2">
                <div class="w-full sm:max-w-md mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
                    <slot />
                </div>
            </div>
        </div>
    </div>
</template>  