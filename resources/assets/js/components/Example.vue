<template>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Selects Dependientes con vue.js + select2 + Laravel</div>
                
                <div class="panel-body">
                    <div class="form-group">
                        <label for="" class="col-md-3">
                            Estado(Estado):
                        </label>
                        <div class="col-md-9">
                            <select2 :options="estados" v-model="Estado" @input="getMunicipios">
                                
                            </select2>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-md-3">
                            Estados(State):
                        </label>
                        <div class="col-md-9">
                            <select2 :options="municipios" v-model="Municipio">
                                
                            </select2>
                        </div>
                    </div>
                    

                    
                </div>
            </div>
        </div>
    </div>
</div>
</template>

<script>
import axios from 'axios';
import VueAxios from 'vue-axios';

Vue.use(VueAxios, axios);
export default {
    mounted() {
        
        Vue.axios.get('GetEstados')
        .then((response)=>{
            this.estados = response.data;    
        })
    },
    data: function(){
        return {
            Estado: '0',
            Municipio: '0',
            estados:[],
            municipio: [],
        }
    },
    methods:
    {
        getMunicipios()
        {
            
                Vue.axios.get('GetMunicipios/'+this.Estado)
                .then((response)=>{
                    this.municipios = response.data;  
                })   
            
            
        }
    }
}
</script>