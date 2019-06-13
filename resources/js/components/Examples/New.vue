<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">New</div>

                    <div class="card-body">
                        Create a new item
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
// import axios form axios
    export default {
        data: function() {
            new_item: {}
        },
        methods: {
            submit_new_item() {
                console.log('TODO: wire up get()')
                // axios.post('/', new_item)
                // .then(res => {
                //     console.log(res)
                // })
            }
        },
        mounted() {
            console.log('"New" component mounted.')
        }
    }
</script>