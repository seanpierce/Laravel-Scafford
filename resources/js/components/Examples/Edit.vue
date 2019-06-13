<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit</div>

                    <div class="card-body">
                        Edit item
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
            edit_item: {}
        },
        methods: {
            submit_edit_item() {
                console.log('TODO: wire up get()')
                // axios.post('/', edit_item)
                // .then(res => {
                //     console.log(res)
                // })
            }
        },
        mounted() {
            console.log('"Edit" component mounted.')
        }
    }
</script>