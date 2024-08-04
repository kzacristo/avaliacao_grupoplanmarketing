<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head } from '@inertiajs/vue3';
</script>

<style>
@import url(../../css/my.css);
</style>

<template>

    <Head title="Training" />

    <AuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">Training</h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 text-gray-900">
                        <table class="container">
                            <thead>
                                <tr>
                                    <th>
                                        <h1>
                                            Nome Colaborador
                                        </h1>
                                    </th>
                                    <th>
                                        <h1>
                                            Trainamento pendentes
                                        </h1>
                                    </th>
                                    <th>
                                        <h1>
                                            Nome Gestor
                                        </h1>
                                    </th>
                                    <th>
                                        <h1>
                                            E-mail Gestor
                                        </h1>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(Colaborador) of title">
                                    <td>{{ title['name'] }}</td>
                                    <td>{{ title['treinamento'] }}</td>
                                    <td>{{ title['gestor'] }}</td>
                                    <td>{{ title['email'] }}</td>
                                </tr>
                                <tr>
                                    <td>Bruno</td>
                                    <td>Segurança 11</td>
                                    <td>Pedro</td>
                                    <td>pedro@gestor.com</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </AuthenticatedLayout>
</template>
