import React from 'react';
import Enzyme, { shallow } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

import { Hello } from 'components/Hello';

Enzyme.configure({ adapter: new Adapter() });
test('Hello function', () => {
    const wrapper = shallow(<Hello compiler="nirum" framework="Flask" />);

    expect(wrapper.find('h1').text()).toBe('Hello from nirum and Flask!');
});
