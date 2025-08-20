import { Ai } from './vendor/@cloudflare/ai.js';

export default {

  async fetch(request, env) {

    let body = await request.json();
    
    const ai = new Ai(env.AI);

    let response;
    
    if (body.prompt) {

      // Prompt style input  
      response = await ai.run('@cf/meta/llama-2-7b-chat-int8', {
        prompt: body.prompt
      });

    } else if (body.messages) {
    
      // Chat style input
      response = await ai.run('@cf/meta/llama-2-7b-chat-int8', {
        messages: body.messages  
      });
      
    }

    return new Response(JSON.stringify(response));

  }

};