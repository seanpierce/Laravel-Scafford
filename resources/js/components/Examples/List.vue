<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">List</div>

                    <div class="card-body">
                        <div v-for="item in list" :key="index"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
// import axios from axios
    export default {
        data: function() {
            list: []
        },
        methods: {
            get() {
                console.log('TODO: wire up get()')
                // axios.get('/')
                // .then(res => {
                //     console.log(res)
                //     this.list = res.data
                // })
            }
        },
        mounted() {
            console.log('"List" component mounted.')
            this.get();
        }
    }
</script>

